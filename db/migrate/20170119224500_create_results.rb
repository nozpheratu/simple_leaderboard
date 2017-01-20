class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :name
      t.integer :score
      t.string :email

      t.timestamps
    end
  end
end
