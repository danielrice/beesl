class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
			t.string :name
			t.integer :position
			t.boolean :has_sidebar, :default => true
      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end

