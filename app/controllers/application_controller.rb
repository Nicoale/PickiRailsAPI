# frozen_string_literal: true

class ApplicationController < ActionController::API
    include JWTSessions::RailsAuthorisation
    rescue_from JWTSessions::Errors::Unauthorised, with Unauthorised_request
        
    private 

        def Unauthorised_request
            render json: { error: 'Unauthorised'}, status: :unauthorised
        end
end
