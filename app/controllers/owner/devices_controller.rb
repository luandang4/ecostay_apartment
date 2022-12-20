class Owner::DevicesController < Owner::BaseController
  skip_before_action :verify_authenticity_token, only: :destroy

  def index
    operation = Owner::Devices::IndexOperation.new(params, current_user, session: session)
    operation.call

    @apartment = operation.apartment
    @devices = operation.devices
  end

  def new
    @device = Owner::Devices::NewForm.new()
  end

  def show
    operation = Owner::Devices::ShowOperation.new(params, current_user, session: session)
    operation.call

    @device = operation.device
  end

  def create
    operation = Owner::Devices::CreateOperation.new(params, current_user, session: session)
    operation.call

    @device = operation.form
    if @device.errors.messages.present?
      return render :new
    end

    redirect_to owner_devices_path
    flash[:success] = 'Successful created'
  end
end
