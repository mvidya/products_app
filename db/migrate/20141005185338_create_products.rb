class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      

      t.string :name
      t.text :description
      t.float :amount
      t.string :status


      t.timestamps
    end
  end
end
