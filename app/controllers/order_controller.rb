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
    @order = Order.find_by(id: params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:schedule_id, :quantity, :comment)
  end
end
