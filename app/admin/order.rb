ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :price, :delivery_date, :address, :phone, :allergies, :boxes

action_item :confirm_order, only: :show do
  link_to 'Confirm Order', '#'
end

action_item :cancel_order, only: :show do
  link_to 'Cancel Order', '#'
end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
