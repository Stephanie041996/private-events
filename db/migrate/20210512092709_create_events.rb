class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.string :Location

      t.timestamps
    end
  end
end
