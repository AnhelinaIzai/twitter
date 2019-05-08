class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :nickname
      t.integer :age
      t.string :avatar

      t.timestamps
    end
  end
end
