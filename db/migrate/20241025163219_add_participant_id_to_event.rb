class AddParticipantIdToEvent < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :participant_id, :integer
  end
end
