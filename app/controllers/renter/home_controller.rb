class Renter::HomeController < Renter::BaseController
  skip_before_action :verify_authenticity_token, only: :index

  def index
    operation = Renter::Home::IndexOperation.new(params, current_user, session: session)
    operation.call

    @devices = operation.devices
  end
end
