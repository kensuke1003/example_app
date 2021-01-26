class RemoveKenFromLists < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :ken, :string
  end
end
