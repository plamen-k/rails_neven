class CreateStockists < ActiveRecord::Migration[5.0]
  def change
    create_table :stockists do |t|
      t.string :slug
      t.string :title
      t.string :address
      t.integer :lat
      t.integer :lng
      t.string :thubmnail
      t.string :title_en
      t.string :title_nb

      t.timestamps
    end
  end
end
