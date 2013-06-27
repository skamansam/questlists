# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@admin = User.new(:firstname=>"\"Skaman Sam\"uel",:lastname=>"Tyler",:admin=>true,:public=>true, :email=>"skamansam@gmail.com",:confirmed_at=>Time.now, :password=>"skamansam", :password_confirmation=>"skamansam")
@admin.skip_confirmation!
@admin.confirm!
@admin.save!

list1=List.create!(:name=>"Gothic 3",:info=>"Gothic 3 is a game from Pirhana Bytes.")
item1=list1.list_items.create!(:title=>"Find all of the Fire Chalices",:description=>"Find it!")
item1.children.create!(:title=>"Find the first Fire Chalice",:description=>"Find it!",:parent=>item1)
item1.children.create!(:title=>"Find the second Fire Chalice",:description=>"Find it!",:parent=>item1)
item1.children.create!(:title=>"Find the third Fire Chalice",:description=>"Find it!",:parent=>item1)
item1.children.create!(:title=>"Find the fourth Fire Chalice",:description=>"Find it!",:parent=>item1)
item1.children.create!(:title=>"Find the fifth Fire Chalice",:description=>"Find it!",:parent=>item1)
