class Api::V1::RiderLoginsController < ApplicationController
  before_action :authorise_access_request!, only: [:destroy]
    
    def create
      rider =Rider.find_by(email: params[:email])
      if rider.authenticate(params[:password])
        payload ={rider_id: rider.id}
        session = JWTSession::Session.new(payload: payload, refresh_by_access_allowed: true )
        token = session.login
        response.set_cookie(JWTSession.access_cookie,
                            value: token[access],
                            httponly: true,
                            secure: Rails.env.production?
                          )

        format.json{csrf {tokens [csrf]}}
      else
        not_available
      end                    
    end
     
    def destroy 
      session = JWTSession::Session.new(payload: payload)
      session.flush_by_access_payload
      render json: :ok
    end

    private

    def not_available
    render json: {error: "Email/Password combination is incorrect"}, status: :not_available
    end
  end