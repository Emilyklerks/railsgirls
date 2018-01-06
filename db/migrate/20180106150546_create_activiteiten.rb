class CreateActiviteiten < ActiveRecord::Migration[5.1]
  def change
    create_table :activiteiten do |t|
      t.string :naam
      t.text :beschrijving
      t.string :afbeelding

      t.timestamps
    end
  end
end
