class CreatePostulations < ActiveRecord::Migration[7.0]
  def change
    create_table :postulations do |t|
      t.references :publication, null: false, foreign_key: true

      t.timestamps
    end
  end
end
