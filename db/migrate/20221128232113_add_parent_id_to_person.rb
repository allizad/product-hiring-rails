class AddParentIdToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :parent_id, :integer
  end
end
