class CreateAlgos < ActiveRecord::Migration[6.1]
  def change
    create_table :algos do |t|
      t.string :name

      t.timestamps
    end
  end
end
