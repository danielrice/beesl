class CreatePanels < ActiveRecord::Migration
  def self.up
    create_table :panels do |t|
			t.string :title
			t.text :content, :limit => 65536 # default value
			t.integer :page_id
			t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :panels
  end
end