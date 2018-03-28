class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table  :events do |t|
      t.string    :event_name,  null: false, length: { maximum: 20 }
      t.datetime  :event_date,  null: false, length: { maximum: 20 }
      t.string    :place,       null: false, length: { maximum: 20 }
      t.text      :description, null: false
      t.integer   :user_id,  null: false
      t.timestamps
    end
    # add_index :events, unique: true
  end
end
