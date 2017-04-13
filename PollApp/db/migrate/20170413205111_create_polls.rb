class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.integer :author, null: false
      t.timestamps
    end

    add_index :polls, :author
  end
end
