class Owner::RoomsController < Owner::BaseController
  skip_before_action :verify_authenticity_token, only: :destroy

  def show
  end

  def create
    operation = Owner::Rooms::CreateOperation.new(params, current_user, session: session)
    operation.call


  end
end
