class Owner::ServicesController < Owner::BaseController
  skip_before_action :verify_authenticity_token, only: :destroy

  def index
    operation = Owner::Services::IndexOperation.new(params, current_user, session: session)
    operation.call

    @apartment = operation.apartment
    @services = operation.services
  end

  def show
    operation = Owner::Services::ShowOperation.new(params, current_user, session: session)
    operation.call

    @service = operation.service
  end

  def create
    operation = Owner::Services::CreateOperation.new(params, current_user, session: session)
    operation.call

    @errors = operation.errors if operation.error?

    redirect_to owner_services_path
  end

  def update
    operation = Owner::Services::UpdateOperation.new(params, current_user, session: session)
    operation.call

    @service = operation.service
    @errors = operation.errors

    if @errors
      return render 'owner/services/show'
    end

    redirect_to owner_services_path
    flash[:success] = 'Successful updated'
  end

  def destroy
    Service.find(params[:id]).destroy

    redirect_to owner_services_path
    flash[:success] = 'Successfully deleted'
  end
end
