class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 16
      t.string :password_hash
      t.timestamps
    end
  end
end
