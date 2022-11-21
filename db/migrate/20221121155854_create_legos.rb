class CreateLegos < ActiveRecord::Migration[7.0]
  def change
    create_table :legos do |t|
      t.string :title
      t.integer :number_of_parts
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
