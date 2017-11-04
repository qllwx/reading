class CreateCshes < ActiveRecord::Migration[5.1]
  def change
    create_table :cshes do |t|
      t.string :area
      t.string :school
      t.integer :sit_no
      t.string :grade
      t.string :c_name
      t.string :s_no
      t.string :name
      t.string :sex
      t.integer :score
      t.string :pj
      t.string :period

      t.timestamps
    end
  end
end
