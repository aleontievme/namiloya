class OrderController < ApplicationController
  def new
  	@order    = Order.new
    @trip     = Trip.find_by(permalink: params[:permalink])
    @schedule = Schedule.find_by(trip_id: @trip.id, begin_date: params[:date])
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def show
    operm  = params[:permalink]
    @order = Order.includes{schedule}.where{(permalink.eq operm) & (schedule.begin_date > DateTime.now - 365)}.first
  end

  private

  def order_params
    params.require(:order).permit(:schedule_id, :quantity, :comment, :phone, :email, :name)
  end
end
