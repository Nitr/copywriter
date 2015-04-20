ActiveAdmin.register Project do

  form do |f|
    inputs "Details" do
      f.input :description, as: :text
      f.input :user, as: :select, collection: User.pluck(:email, :id)
    end

    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params [:description, :user_id]
  
  #or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
