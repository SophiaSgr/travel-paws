class DashboardController < ApplicationController

  def index
    if current_user.is_shelter_owner?
  create instance variables for shelters, animals, incoming requests
else
  only outgoing requests
end

  end



end
