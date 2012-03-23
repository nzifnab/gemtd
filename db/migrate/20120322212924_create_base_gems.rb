class CreateBaseGems < ActiveRecord::Migration
  def change
    create_table :base_gems do |t|
      t.string :name

      t.timestamps
    end
  end
end
