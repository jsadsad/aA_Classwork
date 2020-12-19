class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :response, null: false
      t.integer :user_id, null: false
      t.integer :question_id, null: false
      t.timestamps
    end
  end
end
