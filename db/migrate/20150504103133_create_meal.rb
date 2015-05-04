class CreateMeal < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :weight
      t.string :ingestion

      t.belongs_to :user
      t.belongs_to :product
      t.timestamps
    end
  end
end
