class User < ApplicationRecord
  has_secure_password
  has_one :medical_record
  has_many :medical_events; through :medical_record

  after_create :create_medical_record

  private
  def create_medical_record
    self.medical_record = MedicalRecord.new
    self.medical_record.save!
  end
end
