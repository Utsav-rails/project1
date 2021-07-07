class AddTalukaIdToStates < ActiveRecord::Migration[6.1]
  def change
    add_column :states, :taluka_id, :integer
  end
end
