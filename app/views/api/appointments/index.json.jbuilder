json.array! @appointments.each do |appointment|
  json.partial! "appointment.json.jbuilder", appointment: appointment
end