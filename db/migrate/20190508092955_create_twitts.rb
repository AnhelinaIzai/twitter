class CreateTwitts < ActiveRecord::Migration[5.1]
  def change
    create_table :twitts do |t|
      t.integer :user_id
      t.string :title
      t.string :body
      t.string :photos

      t.timestamps
    end
  end
end
