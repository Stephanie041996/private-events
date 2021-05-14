class DropAttendees < ActiveRecord::Migration[6.1]
  def change
    drop_table :attendee
  end
end
