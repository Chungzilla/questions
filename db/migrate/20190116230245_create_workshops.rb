class CreateWorkshops < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
      t.string :name
      t.references :facilitator, foreign_key: true

      t.timestamps
    end
  end
end
