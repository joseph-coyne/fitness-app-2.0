json.id appointment.id
json.time appointment.time
json.rating appointment.rating
json.info appointment.info
json.strftime appointment.strftime
json.trainer_id appointment.trainer_id
json.trainer_first_name appointment.trainer.first_name
json.trainer_last_name appointment.trainer.last_name
# json.trainer_image rails_blob_url(appointment.trainer.image)
json.items appointment.items

json.user_name appointment.user.user_name
# json.user_image rails_blob_url(appointment.user.image)
json.created_at appointment.created_at
json.updated_at appointment.updated_at