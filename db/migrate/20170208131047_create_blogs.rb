class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title, null: false, limit: 100
      t.text :content
      t.boolean :is_draft, default: true
      t.boolean :is_public, default: false
      t.integer :read_count, default: 0
      t.timestamps
    end
  end
end
