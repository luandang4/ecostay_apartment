class Owner::BaseController < ApplicationController
  before_action :owner_required

  def owner_required
    current_user.role.owner? || redirect_to("/")
  end
end
