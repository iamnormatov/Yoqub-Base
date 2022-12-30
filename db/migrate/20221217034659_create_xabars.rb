class CreateXabars < ActiveRecord::Migration[7.0]
  def change
    create_table :xabars do |t|
      t.string :ism
      t.text :tavsiv
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
