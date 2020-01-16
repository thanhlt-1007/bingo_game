class CreateBingos < ActiveRecord::Migration[5.2]
  def change
    create_table :bingos do |t|
      t.string :numbers

      t.timestamps
    end
  end
end
