class CreateBoards < ActiveRecord::Migration[5.2]
	def self.up
		create_table :boards, :primary_key => :board_id do |t|
			t.string :title, null: false
			t.integer :sort_no, default: 1

			t.timestamps
		end
	end

	def self.down
		drop_table :boards
	end
end
