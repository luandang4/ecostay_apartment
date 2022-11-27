class Owner::ServicesController < Owner::BaseController
  def index
    operation = Owner::Services::IndexOperation.new(params, current_user, session: session)
    operation.call

    @apartment = operation.apartment
    @services = operation.services
  end

  def show
  end
end
