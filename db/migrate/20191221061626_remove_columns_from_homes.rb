class RemoveColumnsFromHomes < ActiveRecord::Migration[5.2]
  def change
    remove_column :Homes, :"物件名", :string
    remove_column :Homes, :"賃料", :text
    remove_column :Homes, :"住所", :text
    remove_column :Homes, :"備考", :text
  end
end
