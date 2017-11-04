class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :bookname
      t.text :summary
      t.string :pic

      t.timestamps
    end
  end
end
