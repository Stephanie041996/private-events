class CreateAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :attendees do |t|
      t.integer :user_id
      t.integer :events_id

      t.timestamps
    end
    add_index :attendees, :user_id
    add_index :attendees, :events_id
  end
end
