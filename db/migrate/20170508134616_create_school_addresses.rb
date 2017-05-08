class CreateSchoolAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :school_addresses do |t|
      t.string :line
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :state_code
      t.string :zip_code
      t.string :phone_number
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
