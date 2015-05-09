class CreateZodiacs < ActiveRecord::Migration
  def change
    create_table :zodiacs do |t|
      t.string :sign
      t.string :creatures
      t.text :fortune
    end
  end
end
