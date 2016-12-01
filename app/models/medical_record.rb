class MedicalRecord < ApplicationRecord
belongs_to :user
has_many :medical_events
end
