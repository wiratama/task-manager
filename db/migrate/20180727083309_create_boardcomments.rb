class CreateBoardcomments < ActiveRecord::Migration[5.2]
  def change
    create_table :boardcomments do |t|

      t.timestamps
    end
  end
end
