class CreateFirms < ActiveRecord::Migration[5.2]
  def change
    create_table :firms do |t|

      t.timestamps
    end
  end
end
