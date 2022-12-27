class Renter::OrdersController < Renter::BaseController
  skip_before_action :verify_authenticity_token, only: :index

  def index
  end

  def show
    operation = Renter::Orders::ShowOperation.new(params, current_user, session: session)
    operation.call

    @room          = operation.room
    @services      = operation.services
    @order         = operation.order
    @amout_service = operation.amout_service
    @month         = operation.month
  end

  def new
  end

  def generates_charge
    token = params[:stripeToken]
    customer = Stripe::Customer.create(
      email:  current_user.email,
      source: token
    )

    amount = total_payment

    charge = Stripe::Charge.create(
      amount:      amount.to_i,
      customer:    customer.id,
      currency:    'vnd',
      description: "Rails Stripe customer: #{current_user.name}"
    )
  end
end
