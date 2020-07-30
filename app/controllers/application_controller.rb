class ApplicationController < ActionController::Base
    
    include SessionHelper
    
    private
    
    def require_user_igged_in
        unless logged_in?
            redirect_to login_url
        end
    end    
end
