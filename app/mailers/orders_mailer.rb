class OrdersMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
  def receipt_email(order_id)
    @order = Order.find(order_id)
    mail(to: @order.email, subject: 'Order #{@order.id} Confirmation')
  end
end


