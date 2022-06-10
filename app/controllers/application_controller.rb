class ApplicationController < ActionController::Base
    before_action :record_page_view

  def record_page_view
    # Add a condition to record only your canonical domain
    # and use a gem such as crawler_detect to skip bots.
    ActiveAnalytics.record_request(request)
  end
private 

def user_not_authorized
    flash[:notice] = "Você não tem permissão para fazer esta ação."
    redirect_to(request.referrer || root_path)
end
end