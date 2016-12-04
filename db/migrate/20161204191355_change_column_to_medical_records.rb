class ChangeColumnToMedicalRecords < ActiveRecord::Migration[5.0]
  def change
      change_column :medical_records, :phone_1, :integer, :limit=> 8
  end
end
