class CreateGuitars < ActiveRecord::Migration 
    def change 
        create_table :coupons do |t|
            t.string :type
            t.string :model
            t.string :brand 

            t.timestamps null: false 
        end 
    end 
end 