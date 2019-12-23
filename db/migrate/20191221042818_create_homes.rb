class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :"物件名"
      t.string :"賃料"
      t.string :"住所"
      t.text :"備考"
    end
  end
end
