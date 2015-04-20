class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :description, null: false
      t.string :name, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
