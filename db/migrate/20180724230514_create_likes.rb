class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :status
      t.belongs_to :user
      t.timestamps
    end

    add_index :likes, [:status_id, :user_id], unique: true
  end
end
