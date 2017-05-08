class Rename < ActiveRecord::Migration[5.0]
  def change
     rename_column :schools, :type, :stype
  end
end
