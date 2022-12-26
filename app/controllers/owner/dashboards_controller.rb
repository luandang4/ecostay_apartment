class Owner::DashboardsController < Owner::BaseController

  def index
    operation = Owner::Dashboards::IndexOperation.new(params, current_user, session: session)
    operation.call

    @members  = operation.members
    @services = operation.services
  end
end
