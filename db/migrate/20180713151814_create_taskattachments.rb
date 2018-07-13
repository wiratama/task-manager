class CreateTaskattachments < ActiveRecord::Migration[5.2]
	def self.up
		create_table :taskattachments, :primary_key => :taskattachment_id do |t|
			t.text :filepath, null: true
			t.text :fileurl, null: true
			t.integer :sort_no, default: 1
			t.integer :task_id, default: 0

		 	t.timestamps
		end
	end

	def self.down
		drop_table :taskattachments
	end
end
