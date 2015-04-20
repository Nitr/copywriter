ActiveAdmin.register User do

  form do |f|
    inputs "Details" do
      f.input :email, as: :email
      f.input :password, as: :password
    end

    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params [:email, :password]
  
  #or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
