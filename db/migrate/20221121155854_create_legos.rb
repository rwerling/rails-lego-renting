class CreateLegos < ActiveRecord::Migration[7.0]
  def change
    create_table :legos do |t|
      t.string :model_name
      t.integer :owner_id
      t.integer :number_of_parts

      t.timestamps
    end
  end
end
