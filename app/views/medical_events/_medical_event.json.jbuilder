json.extract! medical_event, :id, :date, :description, :provider, :medical_record_id, :created_at, :updated_at
json.url medical_event_url(medical_event, format: :json)