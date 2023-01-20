class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :body, null: false
      t.string :status
      t.integer :user_id
      t.belongs_to :owner, null: false, foreign_key: { to_table: :users }, index: true


      t.timestamps
    end
  end
end
