class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
