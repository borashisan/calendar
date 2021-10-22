class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :type
      t.float :weight
      t.integer :rep
      t.integer :set 
      t.text :comment
      t.datetime :datetime

      t.timestamps
    end
  end
end
