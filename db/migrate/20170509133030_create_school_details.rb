class CreateSchoolDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :school_details do |t|
      t.integer :stcount
      t.integer :mstcount
      t.integer :fstcount
      t.integer :grade
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
