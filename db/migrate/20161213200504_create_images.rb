class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :post, index: true, foreign_key: true
      t.text :description
      t.text :image
      t.text :gallery_token
      t.text :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps null: false
    end
  end
end
