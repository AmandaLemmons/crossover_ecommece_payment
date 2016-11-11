class ChargesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @charge = Charge.new
  end

   def index
     @charges = Charge.all
     render json: @charges
   end

   def show
     render json: @charge
   end

   def create
     @charge = Charge.new(charge_params)
     
     if @charge.save
       render status: 201
     else
       render json: @charge.errors, status: 422
     end
   end

  #  def update
  #    if @charge.update(customer_params)
  #      head :no_content
  #    else
  #      render json: @charge.errors, status: :unprocessable_entity
  #    end
  #  end

  #  def destroy
  #    @charge.destroy
  #    head :no_content
  #  end

   private

     def set_charge
       @charge = Charge.find(params[:id])
     end

     def charge_params
       params.require(:charge).permit(:amount, :card_number, :email, :cvc, :exp_month, :exp_year, :name)
     end
end
