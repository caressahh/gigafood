require "rails_helper"

RSpec.describe ConfirmationMailer, type: :mailer do
  describe 'confirmation' do
    let(:order) { FactoryGirl.create(:order, name: 'Order name', status: 'approved', email: 'customer@test.com') }
    let(:mail) { ConfirmationMailer.confirmation_email(order) }

    it 'renders the subject' do
      expect(mail.subject).to eql('Confirmation from Gigafood')
    end

    it 'renders the receiver email' do
      expect(mail.to).to eql([order.email])
    end

    it 'renders the sender email' do
      expect(mail.from).to eql(['noreply@gigafood.se'])
    end

    it 'assigns @name' do
      expect(mail.body.encoded).to match(order.name)
    end

    it 'assigns @confirmation_url' do
      expect(mail.body.encoded).to match("http://application_url/#{order.id}/confirmation")
    end
  end
end
