class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :ip
      t.integer :option_id

      t.timestamps null: false
    end
  end
end
