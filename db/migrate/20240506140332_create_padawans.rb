class CreatePadawans < ActiveRecord::Migration[7.1]
  def change
    create_table :padawans do |t|
      t.string :name
      t.integer :age
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
