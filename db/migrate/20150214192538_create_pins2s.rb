class CreatePins2s < ActiveRecord::Migration
  def change
    create_table :pins2s do |t|
      t.string :description

      t.timestamps
    end
  end
end
