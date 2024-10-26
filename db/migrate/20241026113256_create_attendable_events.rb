class CreateAttendableEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :attendable_events do |t|
      t.integer :attendee
      t.integer :attended_event

      t.timestamps
    end
  end
end
