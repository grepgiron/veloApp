class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :tracking
      t.date :arrived_date
      t.date :departed_date
      t.references :carrier, foreign_key: true
      t.references :client, foreign_key: true
      t.references :located, foreign_key: true

      t.timestamps
    end
  end
end
