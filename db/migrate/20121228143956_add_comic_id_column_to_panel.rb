class AddComicIdColumnToPanel < ActiveRecord::Migration
  def change
    add_column :panels, :comic_id, :integer
  end
end
