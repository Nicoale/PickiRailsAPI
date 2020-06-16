class RidersignupController < ApplicationController
  def create
    rider= rider.new(rider_params)
    if rider.save
      payload = {rider_id:rider.id}
      session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed:true)
      tokens = session.login
      

    response.set_cookie(JWTSessions.access_cookie,
                          value:tokens,
                          httponly: true,
                          secure:Rails.env.production?
                        )
    render json: {csrf: tokens[:csrf]}
                      else
                        render jason: {error: rider.errors.full_messages.join('', status: ::unprocessable_entity)} 
    end
  end

    private 
  def rider_params 
    params.permit(:email, :password,:password_confirmation)
  end
end