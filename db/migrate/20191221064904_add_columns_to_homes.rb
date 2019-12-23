class AddColumnsToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :property, :string
    add_column :homes, :rent, :text
    add_column :homes, :address, :text
    add_column :homes, :age, :text
    add_column :homes, :remarks, :text

  end
end
