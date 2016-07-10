default_password = 'password'

docs = %w[
      aeva.palecek
      alex.cullen
      andre.beaudette
      andrey.melikhov
      artur.g
      bill.burke
      bruce.ackerman
      charles.lim
      chris.burgner
      chris.tung]
docs.each do |doc|
  email      = "#{doc}@me.com"
  name       = doc.split(".")[0]
  u          = User.where(email: email).first_or_create
  u.password ||= default_password
  u.role     = 'doctor'
  u.save!
  d          = Doctor.where(email: email, name: name).first_or_create
  d.save!
end

patients = %w[
      matt.dressel
      matt.gilk
      michael.air
      naman.mehta
      nathan.keyes
      nic.roth
      nishant.shah
      paul.zhang
      peter.sidereas
      robert.k]

patients.each do |p|
  email      = "#{p}@me.com"
  name       = p.split(".")[0]
  u          = User.where(email: email).first_or_create
  u.password ||= default_password
  u.role     = 'patient'
  u.save!
  d          = Patient.where(email: email, name: name, age: 22, address: '2033 N. Dayton').first_or_create
  d.doctor_id = d.id
  d.save!
end
