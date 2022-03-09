class CreateCryptoassets < ActiveRecord::Migration[7.0]
  def change
    create_table :cryptoassets do |t|
      t.string :name
      t.string :description
      t.string :ticker

      t.timestamps
    end
  end
end
