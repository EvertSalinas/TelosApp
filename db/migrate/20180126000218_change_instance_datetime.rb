class ChangeInstanceDatetime < ActiveRecord::Migration[5.0]
  def change
    change_column :activity_instances, :date, :date
  end
end
