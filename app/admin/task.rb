ActiveAdmin.register Task do

  form do |f|
    inputs "Details" do
      f.input :project, as: :select, collection: Project.pluck(:name, :id)
      f.input :source_title, as: :string
      f.input :source_text, as: :text
      f.input :rewriten_title, as: :string
      f.input :rewriten_text, as: :text
    end

    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params [:project_id, :source_title, :source_text, :rewriten_title, :rewriten_text]
  
  #or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
