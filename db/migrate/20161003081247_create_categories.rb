class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      ## you can add more stuff as per your requirements 
      t.timestamps
    end
  end
end