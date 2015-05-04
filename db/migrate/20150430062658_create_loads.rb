class CreateLoads < ActiveRecord::Migration
  def change
    create_table :loads do |t|
      t.string  :title
      t.integer :calories

      t.timestamps
    end
  end
end
