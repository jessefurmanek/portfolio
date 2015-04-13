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


w1 = Website.create(:title => 'jessefurmanek.com', :description => 'My landing site', :url =>'http://jessefurmanek.com', :screenshot =>'jessefurmanekcom.png')
w1.categories.append(Category.find(html.id), Category.find(css.id))

w2 = Website.create(:title => 'Chicago Neighborhood Finder', :description => "A site that determines which chicago neighborhood you're currently in", 
	:url =>'http://jessefurmanek.github.io/where_in_chicago/', :screenshot =>'ChicagoNeighborhoodFinder.png')
w2.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))


w3 = Website.create(:title => 'Broadway v.1', :description => "First version of the Broadway Website", :url =>'http://jessefurmanek.github.io/broadway_v1/', :screenshot =>'Broadwayv1.png')
w3.categories.append(Category.find(html.id), Category.find(css.id))

w4 = Website.create(:title => 'Innovation Conference', :description => "First version of the IC Website", :url =>'http://jessefurmanek.github.io/innovation_conference/', :screenshot =>'InnovationConference.png')
w4.categories.append(Category.find(html.id), Category.find(css.id))

w5 = Website.create(:title => 'Move v.1', :description => "First version of the Move website", :url =>'http://jessefurmanek.github.io/move_v1', :screenshot =>'Movev1.png')
w5.categories.append(Category.find(html.id), Category.find(css.id))

w6 = Website.create(:title => 'Best Bites', :description => "First version of the BB website", :url =>'http://jessefurmanek.github.io/best_bites', :screenshot =>'BestBites.png')
w6.categories.append(Category.find(html.id), Category.find(css.id))

w7 = Website.create(:title => 'Photography', :description => "First version of the Photography website", :url =>'http://jessefurmanek.github.io/photography', :screenshot =>'Photography.png')
w7.categories.append(Category.find(html.id), Category.find(css.id))

w8 = Website.create(:title => 'Shutterbugg', :description => "First version of the Shutterbugg website", :url =>'http://jessefurmanek.github.io/shutterbugg', :screenshot =>'Shutterbugg.png')
w8.categories.append(Category.find(html.id), Category.find(css.id))

w9 = Website.create(:title => 'Adoptly', :description => "First version of the Adoptly website", :url =>'http://jessefurmanek.github.io/adoptly', :screenshot =>'Adoptly.png')
w9.categories.append(Category.find(html.id), Category.find(css.id))

w10 = Website.create(:title => 'Headlines', :description => "First version of the Headlines website", :url =>'http://jessefurmanek.github.io/headlines', :screenshot =>'Headlines.png')
w10.categories.append(Category.find(html.id), Category.find(css.id))

w11 = Website.create(:title => 'Junction', :description => "First version of the Junction website", :url =>'http://jessefurmanek.github.io/junction', :screenshot =>'Junction.png')
w11.categories.append(Category.find(html.id), Category.find(css.id))

w12 = Website.create(:title => 'Bolt Network', :description => "First version of the BN website", :url =>'http://jessefurmanek.github.io/bolt_network', :screenshot =>'BoltNetwork.png')
w12.categories.append(Category.find(html.id), Category.find(css.id))

w13 = Website.create(:title => 'Excursion', :description => "First version of the Excursion website", :url =>'http://jessefurmanek.github.io/excursion', :screenshot =>'Excursion.png')
w13.categories.append(Category.find(html.id), Category.find(css.id))

w14 = Website.create(:title => 'Pocketbook v.1', :description => "First version of the Pocketbook website", :url =>'http://jessefurmanek.github.io/pocketbook_v1', :screenshot =>'Pocketbookv1.png')
w14.categories.append(Category.find(html.id), Category.find(css.id))

w15 = Website.create(:title => 'Armando Perez v.1', :description => "First version of the AP website", :url =>'http://jessefurmanek.github.io/armando_perez_v1', :screenshot =>'ArmandoPerezv1.png')
w15.categories.append(Category.find(html.id), Category.find(css.id))

w16 = Website.create(:title => 'Bass', :description => "First version of the Bass website", :url =>'http://jessefurmanek.github.io/bass', :screenshot =>'Bass.png')
w16.categories.append(Category.find(html.id), Category.find(css.id))

w17 = Website.create(:title => 'Newsroom v.1', :description => "First version of the Newsroom website", :url =>'http://jessefurmanek.github.io/newsroom_v1', :screenshot =>'Newsroomv1.png')
w17.categories.append(Category.find(html.id), Category.find(css.id))

w18 = Website.create(:title => 'Birdman', :description => "First version of the Birdman website", :url =>'http://jessefurmanek.github.io/birdman', :screenshot =>'Birdman.png')
w18.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w19 = Website.create(:title => 'Feedster', :description => "First version of the Feedster website", :url =>'http://jessefurmanek.github.io/feedster', :screenshot =>'Feedster.png')
w19.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w20 = Website.create(:title => 'Gameboard v.1', :description => "First version of the Gameboard website", :url =>'http://jessefurmanek.github.io/gameboard_v1', :screenshot =>'Gameboardv1.png')
w20.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w21 = Website.create(:title => 'Bonsai', :description => "First version of the Bonsai website", :url =>'http://jessefurmanek.github.io/bonsai', :screenshot =>'Bonsai.png')
w21.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w22 = Website.create(:title => 'Pocketbook v.2', :description => "Second version of the Pocketbook website", :url =>'http://jessefurmanek.github.io/pocketbook_v2', :screenshot =>'Pocketbookv2.png')
w22.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w23 = Website.create(:title => 'Threadly', :description => "First version of the Threadly website", :url =>'http://jessefurmanek.github.io/threadly', :screenshot =>'Threadly.png')
w23.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w24 = Website.create(:title => 'Armando Perez v.2', :description => "Second version of the AP website", :url =>'http://jessefurmanek.github.io/armando_perez_v2', :screenshot =>'ArmandoPerezv2.png')
w24.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w25 = Website.create(:title => 'Forecast', :description => "First version of the Pocketbook website", :url =>'http://jessefurmanek.github.io/forecast', :screenshot =>'Forecast.png')
w25.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w26 = Website.create(:title => 'Listeasy', :description => "First version of the Threadly website", :url =>'http://jessefurmanek.github.io/listeasy', :screenshot =>'Listeasy.png')
w26.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w27 = Website.create(:title => 'Move Gear v.1', :description => "First version of the Move Gear website", :url =>'http://jessefurmanek.github.io/move_gear_v1', :screenshot =>'MoveGearv1.png')
w27.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w28 = Website.create(:title => 'Newsroom v.2', :description => "Second version of the Newsroom website", :url =>'http://jessefurmanek.github.io/newsroom_v2', :screenshot =>'Newsroomv2.png')
w28.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w29 = Website.create(:title => 'Speakeasy', :description => "First version of the Speakeasy website", :url =>'http://jessefurmanek.github.io/speakeasy', :screenshot =>'Speakeasy.png')
w29.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w30 = Website.create(:title => 'Madison Square', :description => "First version of the Madison Square website", :url =>'http://jessefurmanek.github.io/madison_square', :screenshot =>'MadisonSquare.png')
w30.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w31 = Website.create(:title => 'Milford', :description => "First version of the Milford website", :url =>'http://jessefurmanek.github.io/milford', :screenshot =>'Milford.png')
w31.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w32 = Website.create(:title => 'Move Gear v.2', :description => "Second version of the Move Gear website", :url =>'http://jessefurmanek.github.io/move_gear_v2', :screenshot =>'MoveGearv2.png')
w32.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id))

w33 = Website.create(:title => 'Bolt Network v.2', :description => "Second version of the Bolt Network website", :url =>'http://jessefurmanek.github.io/bolt-network-angularjs', :screenshot =>'BoltNetworkv2.png')
w33.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w34 = Website.create(:title => 'Calendar', :description => "First version of the Calendar website", :url =>'http://jessefurmanek.github.io/calendar-angularjs', :screenshot =>'Calendar.png')
w34.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w35 = Website.create(:title => 'Feedster', :description => "First version of the Feedster website", :url =>'http://jessefurmanek.github.io/feedster-angularjs', :screenshot =>'Feedster.png')
w35.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w36 = Website.create(:title => 'Gameboard v.2', :description => "Second version of the Gameboard website", :url =>'http://jessefurmanek.github.io/gameboard-angularjs', :screenshot =>'Gameboardv2.png')
w36.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w37 = Website.create(:title => 'Move Log', :description => "First version of the Move Log website", :url =>'http://jessefurmanek.github.io/move-log-angularjs', :screenshot =>'MoveLog.png')
w37.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w38 = Website.create(:title => 'NearMe', :description => "First version of the NearMe website", :url =>'http://jessefurmanek.github.io/nearme-angularjs', :screenshot =>'NearMe.png')
w38.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w39 = Website.create(:title => 'Outbox v.1', :description => "First version of the Outbox website", :url =>'http://jessefurmanek.github.io/outbox-1-angularjs', :screenshot =>'Outboxv1.png')
w39.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w40 = Website.create(:title => 'Pizza Planet', :description => "First version of the Pizza Planet website", :url =>'http://jessefurmanek.github.io/pizza-planet-angularjs', :screenshot =>'PizzaPlanet.png')
w40.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w41 = Website.create(:title => 'Reader', :description => "First version of the Reader website", :url =>'http://jessefurmanek.github.io/reader-angularjs', :screenshot =>'Reader.png')
w41.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w42 = Website.create(:title => 'Top 10', :description => "First version of the Top 10 website", :url =>'http://jessefurmanek.github.io/top-10-angularjs', :screenshot =>'Top10.png')
w42.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w43 = Website.create(:title => 'Outbox v.2', :description => "Second version of the Outbox website", :url =>'http://jessefurmanek.github.io/outbox_2', :screenshot =>'Outboxv2.png')
w43.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w44 = Website.create(:title => 'Flapper News Angular', :description => "Angular version of the Flapper News website", :url =>'http://jessefurmanek.github.io/flapper_news_angular', :screenshot =>'FlapperNewsAngular.png')
w44.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(angular.id))

w45 = Website.create(:title => 'Rails Tutorial', :description => "Michael Hartl's Rails Tutorial", :url =>'https://frozen-castle-4422.herokuapp.com/', :screenshot =>'RailsTutorial.png')
w45.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(ruby_on_rails.id))

w45 = Website.create(:title => 'No Excuse? No Problem!', :description => "Final group project for Codecademy Labs", :url =>'https://secret-river-9404.herokuapp.com/', :screenshot =>'NoExcuseNoProblem.png')
w45.categories.append(Category.find(html.id), Category.find(css.id), Category.find(javascript.id), Category.find(ruby_on_rails.id))








