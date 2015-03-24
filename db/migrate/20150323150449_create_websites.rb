class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
    	t.string :title
    	t.string :description
    	t.string :url
    	t.string :screenshot
      t.timestamps null: false
    end
  end
end
