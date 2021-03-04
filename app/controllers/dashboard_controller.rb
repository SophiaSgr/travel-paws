class DashboardController < ApplicationController
  skip_after_action :verify_policy_scoped
  def index
    if current_user.is_shelter_owner?
      @shelters = current_user.shelters
      @animals = current_user.animals
      @incoming_requests = current_user.incoming_requests
    end
    @outgoing_requests = current_user.requests
  end
end
