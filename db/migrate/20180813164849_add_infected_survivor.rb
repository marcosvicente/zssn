class AddInfectedSurvivor < ActiveRecord::Migration[5.2]
  def change
     change_table :survivors do |t|
       t.boolean :infected?
     end
  end
end
