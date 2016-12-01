class CreateMedicalEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_events do |t|
      t.string :date
      t.text :description
      t.string :provider
      t.belongs_to :medical_record, foreign_key: true

      t.timestamps
    end
  end
end
