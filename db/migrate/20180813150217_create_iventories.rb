class CreateIventories < ActiveRecord::Migration[5.2]
  def change
    create_table :iventories do |t|
      t.integer :water
      t.integer :food
      t.integer :medication
      t.integer :ammunition

      t.timestamps
    end
  end
end
