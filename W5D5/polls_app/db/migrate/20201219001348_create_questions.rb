class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :body, null: false
      t.integer :poll_id, null: false
      t.timestamps
    end
  end
end
