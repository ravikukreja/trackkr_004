# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


#User.create(:name=>"admin",:password=>"admin@123",:password_confirmation=>"admin@123",:email=>"admin@trackkr.com")
#User.create(:name=>"regular_user",:password=>"regular_user@123",:password_confirmation=>"regular_user@123",:email=>"regular_user@trackkr.com")


#tr_module_1 = TrackkrModule.create(:name=>"Sports & Fitness",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1 = tr_module_1.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_1.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )

#tr_module_2 =TrackkrModule.create(:name=>"Finance",:image_url=>File.new(RAILS_ROOT + "/public/images/Finance.jpg"))
#t_cat_2 = tr_module_2.t_categories.create(:name=>"Running",:image_url=>File.new(RAILS_ROOT + "/public/images/Running.jpg"))
#t_cat_2.products.create(:name=>"Gymnastic & Yoga",:image_url =>File.new(RAILS_ROOT + "/public/images/Running.jpg") )


Friendship.create(:user_id=> 1, :friend_id=>2, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 2, :friend_id=>3, :product_id=>'1', :status=> 'Accepted')
Friendship.create(:user_id=> 2, :friend_id=>4, :product_id=>'1', :status=> 'Rejected')
Friendship.create(:user_id=> 3, :friend_id=>5, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 12, :friend_id=>6, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 12, :friend_id=>7, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 12, :friend_id=>1, :product_id=>'1', :status=> 'Accepted')
Friendship.create(:user_id=> 12, :friend_id=>2, :product_id=>'1', :status=> 'Accepted')
Friendship.create(:user_id=> 14, :friend_id=>3, :product_id=>'1', :status=> 'Accepted')
Friendship.create(:user_id=> 14, :friend_id=>4, :product_id=>'1', :status=> 'Accepted')
Friendship.create(:user_id=> 14, :friend_id=>5, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 14, :friend_id=>12, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 2, :friend_id=>1, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 2, :friend_id=>12, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 1, :friend_id=>14, :product_id=>'1', :status=> 'Pending')
Friendship.create(:user_id=> 1, :friend_id=>6, :product_id=>'1', :status=> 'Rejected')
Friendship.create(:user_id=> 1, :friend_id=>7, :product_id=>'2', :status=> 'Rejected')
Friendship.create(:user_id=> 1, :friend_id=>8, :product_id=>'1', :status=> 'Rejected')
Friendship.create(:user_id=> 1, :friend_id=>9, :product_id=>'1', :status=> 'Rejected')
Friendship.create(:user_id=> 12, :friend_id=>5, :product_id=>'1', :status=> 'Pending')

