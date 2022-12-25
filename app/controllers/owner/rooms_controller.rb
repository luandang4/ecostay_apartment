class Owner::RoomsController < Owner::BaseController
  skip_before_action :verify_authenticity_token, only: [:destroy, :create]

  def show
    operation = Owner::Rooms::ShowOperation.new(params, current_user, session: session)
    operation.call

    @room = operation.room
  end

  def create
    operation = Owner::Rooms::CreateOperation.new(params, current_user, session: session)
    operation.call
  end
end
