class CreateClassnames < ActiveRecord::Migration[5.1]
  def change
    create_table :classnames do |t|
      t.string :classname

      t.timestamps
    end
  end
end
