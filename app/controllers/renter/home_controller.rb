class Renter::HomeController < Renter::BaseController
  skip_before_action :verify_authenticity_token, only: [:update_device, :index]

  def index
    operation = Renter::Home::IndexOperation.new(params, current_user, session: session)
    operation.call

    @devices = operation.devices
  end

  def update_device
    device = Device.find(params[:id])

    if device.status.on?
      device.update(status: 0)
    else
      device.update(status: 1, time_active: Time.now)
    end

    @devices = current_user.room.devices

    # respond_to do |format|
    #   format.html
    #   format.json do
    #     render json: { devices: @devices }
    #   end
    # end
  end
end
