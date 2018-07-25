class CreateTrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :trackings do |t|
      t.string :tnumber
      t.references :carrier, foreign_key: true

      t.timestamps
    end
  end
end
