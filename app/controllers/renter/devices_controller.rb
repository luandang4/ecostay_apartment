class Renter::DevicesController < Renter::BaseController
  skip_before_action :verify_authenticity_token, only: :update

  def update
    device = Device.find(params[:id])

    if device.status.on?
      device.update(status: 0)
    else
      device.update(status: 1, time_active: Time.now)
    end

    @devices = current_user.room.devices
  end
end
