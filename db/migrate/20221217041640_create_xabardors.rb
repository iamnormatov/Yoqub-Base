class CreateXabardors < ActiveRecord::Migration[7.0]
  def change
    create_table :xabardors do |t|
      t.string :ism
      t.references :xabar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
