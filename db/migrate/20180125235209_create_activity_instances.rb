class CreateActivityInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :activity_instances do |t|
      t.integer :activity_id
      t.datetime :date
      t.float :amount
      t.text :description

      t.timestamps
    end
  end
end
