class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :content
      t.boolean :is_done, :null => false, :default => false

      t.timestamps
    end
  end
end
