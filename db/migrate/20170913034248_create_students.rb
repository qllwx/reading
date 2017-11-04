class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :idcard
      t.string :name
      t.references :grade, foreign_key: true
      t.references :classname, foreign_key: true
      t.integer :sitno
      t.integer :score

      t.timestamps
    end
  end
end
