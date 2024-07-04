ActiveAdmin.register Category do
  # Customize the display of the resource
  index do
    selectable_column
    column :name
    actions
  end

  # Customize the form for creating and updating a resource
  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

  # Customize the permitted parameters for creating and updating a resource
  permit_params :name
end
