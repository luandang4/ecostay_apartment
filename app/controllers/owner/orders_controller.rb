class Owner::OrdersController < Owner::BaseController
    skip_before_action :verify_authenticity_token, only: :destroy

    def index
      @orders = current_user.apartment.orders
    end

    def new
      @order = Owner::Orders::NewForm.new()
    end

    def create
      operation = Owner::Orders::CreateOperation.new(params, current_user, session: session)
      operation.call

      @order = operation.form
      if @order.errors.messages.present?
        return render :new
      end

      redirect_to owner_orders_path
      flash[:success] = 'Successful created'
    end
  end
