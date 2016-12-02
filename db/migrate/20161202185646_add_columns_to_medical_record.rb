class AddColumnsToMedicalRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :medical_records, :name, :string
    add_column :medical_records, :dob, :date
    add_column :medical_records, :language, :string
    add_column :medical_records, :phone_1, :integer
    add_column :medical_records, :phone_2, :integer
    add_column :medical_records, :emer_contact_name, :string
    add_column :medical_records, :prim_phys_name, :string
    add_column :medical_records, :prim_phys_no, :integer
    add_column :medical_records, :health_iss_name, :string
    add_column :medical_records, :health_iss_no, :string
    add_column :medical_records, :health_mem_id, :string
  end
end
