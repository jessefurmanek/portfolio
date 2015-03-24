class CreateCategoriesWebsitesJoinTable < ActiveRecord::Migration
  def change
  	create_table :categories_websites, id: false do |t|
  		t.belongs_to :category, index: true
  		t.belongs_to :website, index: true
  	end
    add_index :categories_websites, :category_id
    add_index :categories_websites, :website_id
  end
end
