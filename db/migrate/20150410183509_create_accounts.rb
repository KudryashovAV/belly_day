class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string  :name
      t.integer :age
      t.integer :sex
      t.integer :weight
      t.integer :growth
      t.integer :hips
      t.integer :waist

      t.timestamps null: false
    end
  end
end
