ActiveAdmin.register User do
  
  index do 
    column :id
    column "Name", :username
    column :email
    column :created_at
    column :contact_number
    column :reminder_option
    
  end
end
