class CreateVariantValues < ActiveRecord::Migration[5.1]
  def change
    create_table :variant_values do |t|
      t.string :name
      t.references :variant_type, foreign_key: true

      t.timestamps
    end
  end
end
