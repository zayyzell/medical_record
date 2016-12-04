class ChangeColumnsTelephonesToMedicalRecords < ActiveRecord::Migration[5.0]
  def change
    change_column :medical_records, :phone_2, :integer, :limit=> 8
    change_column :medical_records, :emer_contact_no, :integer, :limit=> 8
    change_column :medical_records, :prim_phys_no, :integer, :limit=> 8
  end
end
