class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
       t.string:merk
	   t.string:publish
	   t.decimal:harga
      t.timestamps
    end
  end
end
