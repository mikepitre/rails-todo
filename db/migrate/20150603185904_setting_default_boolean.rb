class SettingDefaultBoolean < ActiveRecord::Migration
  def change
    change_column_null(:todos, :completed, false)
  end
end
