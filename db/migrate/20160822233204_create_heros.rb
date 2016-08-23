class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :video
      t.string :image
      t.string :title_en
      t.string :title_nb

      t.timestamps
    end
  end
end
