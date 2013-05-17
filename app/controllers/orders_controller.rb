class OrdersController < ApplicationController

 def index
  @orders=Order.all
 end

 def show
  @orders=OrderItem.where({:order_id => params[:id]})

 end
 
 def destroy
    @orders = Order.find(params[:id])
    @orders.destroy
    redirect_to @order	
 end
 
end
