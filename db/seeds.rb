# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@admin = User.create!(:firstname=>"\"Skaman Sam\"uel",:lastname=>"Tyler",:admin=>true,:public=>true, :email=>"skamansam@gmail.com",:confirmed_at=>Time.now, :password=>"skamansam", :password_confirmation=>"skamansam")
@admin.confirm!
@admin.save!
