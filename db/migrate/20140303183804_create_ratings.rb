class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :value
      t.belongs_to :image, index: true

      t.timestamps
    end
  end
end
