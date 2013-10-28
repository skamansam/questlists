# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# registered admin User
User.create!( :info=>{:homepage=>"",:first_name=>"Sam",:last_name=>"Tyler"},
             :admin=>true,:username=>"sam",:email=>"skamansam@gmail.com",
             :confirmed_at=>Time.now,:password=>"test1234",:password_confirmation=>'test1234' )
