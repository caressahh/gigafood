class ConfirmationMailer < ApplicationMailer
  default from: 'noreply@gigafood.se'

  def confirmation_email(order)
    @order = order
    @url = 'http://example.com/confirmation'
    if @order.status = 'approved'
      mail(to: @order.email, subject: 'Confirmation from Gigafood')
    else
      mail(to: @order.email, subject: 'Cancelation from Gigafood')
    end
  end
end
