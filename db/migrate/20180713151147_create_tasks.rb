class CreateTasks < ActiveRecord::Migration[5.2]
	def self.up
		create_table :tasks, :primary_key => :task_id do |t|
			t.string :title, null: false
			t.text :description, null: true
			t.integer :sort_no, default: 1
			t.integer :board_id, default: 0

		 	t.timestamps
		end
	end

	def self.down
		drop_table :tasks
	end
end
