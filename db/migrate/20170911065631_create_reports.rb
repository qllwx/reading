class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.references :idcode, foreign_key: true
      t.string :bookname
      t.text :bookreport

      t.timestamps
    end
  end
end
