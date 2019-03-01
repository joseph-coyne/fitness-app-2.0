json.id appointment.id
json.time appointment.time
json.rating appointment.rating
json.info appointment.info
json.strftime appointment.strftime
json.trainer_id appointment.trainer_id
json.trainer_first_name appointment.trainer.first_name
json.trainer_last_name appointment.trainer.last_name
json.user_name appointment.user.full_name
json.trainer_avatar rails_blob_url(appointment.trainer.avatar) if appointment.trainer.avatar.attachment
json.items appointment.items
json.focus appointment.focus

json.user_avatar rails_blob_url(appointment.user.avatar) if appointment.user.avatar.attachment
json.created_at appointment.created_at
json.updated_at appointment.updated_at
