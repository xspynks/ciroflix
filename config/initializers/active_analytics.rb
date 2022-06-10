# config/initializers/active_analytics.rb
require_dependency "active_analytics/application_controller"

module ActiveAnalytics
  class ApplicationController
    before_action :require_admin

    def require_admin
      # This example supposes there are current_user and User#admin? methods
      raise ActionController::RoutingError.new("Not found") unless current_user.try(:admin?)
    end
  end
end