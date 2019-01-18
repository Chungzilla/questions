class CreateArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :archives do |t|
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
