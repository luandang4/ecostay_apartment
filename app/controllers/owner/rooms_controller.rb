class Owner::RoomsController < Owner::BaseController
  skip_before_action :verify_authenticity_token, only: [:destroy, :create, :update]

  def show
    operation = Owner::Rooms::ShowOperation.new(params, current_user, session: session)
    operation.call

    @room = operation.room
  end

  def create
    operation = Owner::Rooms::CreateOperation.new(params, current_user, session: session)
    operation.call
  end

  def add_service
    @room     = Room.find(params[:id])
    @services = @room.apartment.services
  end

  def update
    operation = Owner::Rooms::UpdateOperation.new(params, current_user, session: session)
    operation.call

    @services = operation.services
    @ser      = operation.service
    @btn      = operation.btn
  end
end
