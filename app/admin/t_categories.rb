ActiveAdmin.register TCategory do
  
  scope :sports
  
    index do
      column "Category ID",:id
      column :name
      column "Module ID", :trackkr_module_id
    end
  
end
