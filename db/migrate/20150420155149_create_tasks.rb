class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project, index: true, foreign_key: true, null: false
      t.string :source_title, null: false
      t.text :source_text, null: false
      t.string :rewriten_title
      t.text :rewriten_text

      t.timestamps null: false
    end
  end
end
