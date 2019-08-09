class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :status
      t.string :picture

      t.timestamps
    end
  end
end
