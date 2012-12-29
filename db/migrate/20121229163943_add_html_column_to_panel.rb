class AddHtmlColumnToPanel < ActiveRecord::Migration
  def change
    add_column :panels, :html, :text
  end
end
