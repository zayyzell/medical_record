class ChangeColumnToMedicalEvents < ActiveRecord::Migration[5.0]
  def change
    change_column :medical_events, :date, :date
  end
end
