class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :description
      t.integer :index

      t.timestamps
    end
  end
end
