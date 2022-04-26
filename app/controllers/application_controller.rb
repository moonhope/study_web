class ApplicationController < ActionController::Base
        include DeviseTokenAuth::Concerns::SetUserByToken
        skip_before_action :verify_authenticity_token, if: :devise_controller? # APIではCSRFチェックをしない

        def devise_token_auth_controller?
                params[:controller].split('/')[0] == 'devise_token_auth'
        end


end
