class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :message

      t.timestamps

      t.belongs_to :user, foreign_key: true
    end
  end
end
