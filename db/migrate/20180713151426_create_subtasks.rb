class CreateSubtasks < ActiveRecord::Migration[5.2]
	def self.up
		create_table :subtasks, :primary_key => :subtask_id do |t|
			t.string :title, null: false
			t.text :description
			t.integer :sort_no, default: 1
			t.integer :task_id, default: 0

		 	t.timestamps
		end
	end

	def self.down
		drop_table :subtasks
	end
end
