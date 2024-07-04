ActiveAdmin.register Product do
  permit_params :name, :description, :price, :size, :category_id, :image
  # Customize the display of the resource
  index do
    selectable_column
    column :name
    column :description
    column :price
    column :size
    column :image do |product|
      if product.image.attached?
        image_tag product.image.variant(resize_to_limit: [100, 100])
      else
        'No image'
      end
    end
    actions
  end

  # Customize the form for creating and updating a resource
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :size
      f.input :category, as: :select, collection: Category.all
      f.input :image, as: :file
    end
    f.actions
  end

  # Customize the permitted parameters for creating and updating a resource

  show do
    attributes_table do
      row :name
      row :description
      row :price
      row :size
      row :category
      row :image do |product|
        if product.image.attached?
          image_tag rails_blob_path(product.image, disposition: 'inline'), style: 'max-width: 300px;'
        else
          'No image'
        end
      end
      row :created_at
      row :updated_at
    end
  end
end
