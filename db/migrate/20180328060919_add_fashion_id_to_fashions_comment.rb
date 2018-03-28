class AddFashionIdToFashionsComment < ActiveRecord::Migration[5.1]
  def change
    add_column :fashions_comments, :fashion_id, :integer
  end
end
