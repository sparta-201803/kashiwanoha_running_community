class CreateFashions < ActiveRecord::Migration[5.1]
  def change
    create_table :fashions do |t|
      t.integer  :id
      t.string   :image_url
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
