class CreateFacilitators < ActiveRecord::Migration[5.2]
  def change
    create_table :facilitators do |t|
      t.string :first_name

      t.timestamps
    end
  end
end
