class AddEventIdToUser < ActiveRecord::Migration[7.2]
  def change
    add_column :users, :event_id, :integer
  end
end
