ActiveAdmin.register Listing do

 permit_params :title, :room_type, :user_id, :description, :bedroom_count, :bathroom_count, :bed_count, :max_occupancy, :city, :neighborhood, :check_in_time, :nightly_price, :address

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
