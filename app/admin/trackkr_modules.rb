ActiveAdmin.register TrackkrModule do
  
  
    index do
      column "Module ID",:id
      column :name
      column :image_url
      column :created_at
    end
end
