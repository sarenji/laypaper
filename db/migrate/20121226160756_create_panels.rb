class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
      t.string :url
      t.text :text
      t.timestamps
    end
  end
end
