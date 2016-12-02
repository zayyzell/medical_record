class AddColumnsToMedicalRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_records, :emer_contact_no, :integer
  end
end
