class AddFieldsToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :status, :integer, default: 0
    add_column :posts, :visibility, :integer, default: 0
    add_index :posts, :status
    add_index :posts, :visibility
  end
end
