class CreateMedicalRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_records do |t|
      t.boolean :anemia
      t.boolean :angina
      t.boolean :asthma
      t.text :cancer
      t.boolean :cataracts
      t.boolean :colities
      t.boolean :crohns_disease
      t.boolean :diabetes
      t.boolean :emphysema
      t.boolean :epilepsy
      t.boolean :goiter
      t.boolean :heart_murmur
      t.boolean :heart_problems
      t.boolean :hepatitis
      t.boolean :high_blood_pressure
      t.boolean :high_cholesterol
      t.boolean :hiv_aids
      t.boolean :hypothyroidism
      t.boolean :jaundice
      t.boolean :kidney_disease
      t.boolean :kidney_stones
      t.boolean :leukemia
      t.boolean :pneumonia
      t.boolean :psoriasis
      t.boolean :pulmonary_embolism
      t.boolean :rheumatic_fever
      t.boolean :stomach_peptic_ulcer
      t.boolean :stroke
      t.boolean :tuberculosis

      t.timestamps
    end
  end
end
