json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :age, :address, :doctor_id
  json.url patient_url(patient, format: :json)
end
