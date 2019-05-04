class CreateDerslers < ActiveRecord::Migration[5.2]
  def change
    create_table :derslers do |t|
      t.string :baslik
      t.string :konu
      t.text :aciklama
      t.date :tarih

      t.timestamps
    end
  end
end
