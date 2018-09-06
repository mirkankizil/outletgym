class CreateUruns < ActiveRecord::Migration
  def change
    create_table :uruns do |t|
      t.string :baslik
      t.text :icerik

      t.timestamps null: false
    end
  end
end
