class CreateMods < ActiveRecord::Migration
  def change
    create_table :mods do |t|
      t.string :name

      t.timestamps
    end
  end
end
