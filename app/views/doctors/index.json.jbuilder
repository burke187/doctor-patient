json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :encrypted_password, :username
  json.url doctor_url(doctor, format: :json)
end
