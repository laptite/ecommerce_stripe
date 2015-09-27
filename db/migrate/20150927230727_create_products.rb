class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string   :title
      t.string   :subtitle
      t.string   :author
      t.integer  :duration
      t.string   :author_image_name
      t.decimal  :price
      t.string   :sku
      t.string   :download_url
      t.string   :details
      t.text     :description
      t.text     :author_description
      t.timestamps null: false
    end
  end
end
