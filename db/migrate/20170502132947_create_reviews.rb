class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :ip
      t.text  :review_text

      t.timestamps null: false
    end
  end
end
