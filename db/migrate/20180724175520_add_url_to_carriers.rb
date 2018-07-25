class AddUrlToCarriers < ActiveRecord::Migration[5.2]
  def change
    add_column :carriers, :url, :string
  end
end
