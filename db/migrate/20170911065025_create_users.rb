class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :idcode
      t.string :username
      t.integer :sex
      t.string :email
      t.integer :grade
      t.integer :classname
      t.integer :sit
      t.integer :score

      t.timestamps
    end
  end
end
