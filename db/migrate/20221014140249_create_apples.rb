class CreateApples < ActiveRecord::Migration[6.1]
  def change
    create_table :apples do |t|
      t.string :variety
      t.references :basket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
