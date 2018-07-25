class CreateLocateds < ActiveRecord::Migration[5.2]
  def change
    create_table :locateds do |t|
      t.string :address

      t.timestamps
    end
  end
end
