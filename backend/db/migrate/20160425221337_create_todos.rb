class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :content
      t.datetime :dateCreated
      t.integer :timeNeeded
      t.boolean :calendarApp
      t.datetime :dateDue
      t.datetime :bestBy
      t.integer :importance
      t.string :category

      t.timestamps null: false
    end
  end
end
