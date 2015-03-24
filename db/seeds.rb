# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


html = Category.create(:name =>'HTML')
css = Category.create(:name =>'CSS')
javascript = Category.create(:name => 'JavaScript')
angular = Category.create(:name =>'Angular.js')
ruby_on_rails = Category.create(:name =>'Ruby on Rails')


w1 = Website.create(:title => 'jessefurmanek.com', :description => 'My landing site', :url =>'jessefurmanek.com', :screenshot =>'jfwebsite.png')
w1.categories.append(Category.find(html.id), Category.find(css.id))

w2 = Website.create(:title => 'Chicago Neighborhood Finder', :description => "A site that determines which chicago neighborhood you're currently in", 
	:url =>'https://github.com/jessefurmanek/where_in_chicago', :screenshot =>'where_in_chicago.png')
w2.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))


w3 = Website.create(:title => 'Broadway v.1', :description => "First version of the Broadway Website", :url =>'http://jessefurmanek.github.io/broadway_v1/', :screenshot =>'broadway_v1.png')
w3.categories.append(Category.find(html.id), Category.find(css.id))

w4 = Website.create(:title => 'Innovation Conference', :description => "First version of the IC Website", :url =>'http://jessefurmanek.github.io/innovation_conference/', :screenshot =>'innovation_conference.png')
w4.categories.append(Category.find(html.id), Category.find(css.id))