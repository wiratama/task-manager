class CreateBoardattachments < ActiveRecord::Migration[5.2]
  def change
    create_table :boardattachments do |t|

      t.timestamps
    end
  end
end
