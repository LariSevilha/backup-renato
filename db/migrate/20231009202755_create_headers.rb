class CreateHeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :headers do |t|
      t.string :icon
      t.string :description

      t.timestamps
    end
  end
end
