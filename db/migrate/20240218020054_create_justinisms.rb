class CreateJustinisms < ActiveRecord::Migration[7.1]
  def change
    create_table :justinisms do |t|
      t.string :saying

      t.timestamps
    end
  end
end
