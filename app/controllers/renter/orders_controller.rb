class Renter::OrdersController < Renter::BaseController
  skip_before_action :verify_authenticity_token, only: :index

  def index
  end
end
