class CreateGamerooms < ActiveRecord::Migration[7.0]
  def change
    create_table :gamerooms do |t|
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
