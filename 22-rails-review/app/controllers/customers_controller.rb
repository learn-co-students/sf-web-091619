class CustomersController < ApplicationController
  before_action :find_customer_by_id, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.get_customers(params[:sort])
  end

  def show
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.valid?
      redirect_to(@customer)
    else
      render(:new)
    end
  end

  def destroy
    @customer.destroy
    redirect_to(customers_path)
  end

  def edit
  end

  def update
    @customer.update(customer_params)
    if @customer.valid?
      redirect_to(@customer)
    else
      redirect_to(edit_customer_path)
    end
  end

  private

  def find_customer_by_id
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :drink_id)
  end
end
