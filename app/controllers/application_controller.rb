class ApplicationController < ActionController::Base
private 

def user_not_authorized
    flash[:notice] = "Você não tem permissão para fazer esta ação."
    redirect_to(request.referrer || root_path)
end
end