class CreateGuitars < ActiveRecord::Migration[6.1] 
    def change 
        create_table :guitars do |t|
            t.string :type
            t.string :model
            t.string :brand 

            t.timestamps null: false 
        end 
    end 
end 