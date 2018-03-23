class CreateFashionsComments < ActiveRecord::Migration[5.1]
  def change
    create_table :fashions_comments do |t|
      t.integer  :id
      t.integer  :user_id
      t.string   :text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
