class ApplicationController < ActionController::Base
    before_action :record_page_view
    
    def record_page_view
        # This condition should skip bots.
        unless request.is_crawler?
        ActiveAnalytics.record_request(request)
        end
    end
private 

def user_not_authorized
    flash[:notice] = "Você não tem permissão para fazer esta ação."
    redirect_to(request.referrer || root_path)
end
end