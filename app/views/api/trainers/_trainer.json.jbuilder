json.id trainer.id
json.first_name trainer.first_name
json.last_name trainer.last_name
json.full_name trainer.full_name
json.username trainer.username
json.rating trainer.rating
json.email trainer.email
json.birthdate trainer.birthdate
json.gender trainer.gender
json.avatar rails_blob_url(trainer.avatar) if trainer.avatar.attachment
json.bio trainer.bio
json.rating trainer.rating
json.nutritionist trainer.nutritionist
json.tags trainer.friendly_tags
json.location trainer.location
json.video trainer.video
json.created_at trainer.created_at
json.updated_at trainer.updated_at