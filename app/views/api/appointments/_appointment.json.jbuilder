json.id appointment.id
json.time appointment.time
json.rating appointment.rating
json.info appointment.info
json.strftime appointment.strftime
json.trainer_id appointment.trainer_id
json.trainer_first_name appointment.trainer.first_name
json.trainer_last_name appointment.trainer.last_name
json.trainer_avatar rails_blob_url(appointment.trainer.avatar)
json.items appointment.items

json.username appointment.user.username
json.user_avatar rails_blob_url(appointment.user.avatar)
json.created_at appointment.created_at
json.updated_at appointment.updated_at
