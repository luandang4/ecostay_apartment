class Owner::ApartmentsController < Owner::BaseController
  def index
    operation = Owner::Apartments::IndexOperation.new(params, current_user, session: session)
    operation.call

    @apartment = operation.apartment
    @rooms     = operation.rooms
  end
end
