class ChangeComicName < ActiveRecord::Migration
  def up
    change_column :comics, :name, :string, null: false
    add_index :comics, :name, unique: true
  end

  def down
    change_column :comics, :name, :string, null: true
    remove_index :comics, :name
  end
end
