
json.id user.id
json.first_name user.first_name
json.last_name user.last_name
json.full_name user.full_name
json.username user.username
json.badge_name user.badge_name
json.calculated_progress user.calculated_progress
json.email user.email
json.birthdate user.birthdate
json.gender user.gender
json.weight user.weight
json.height user.height
json.bio user.bio
json.level user.level
json.meals user.meals
json.avatar rails_blob_url(user.avatar) if user.avatar.attachment
json.created_at user.created_at
json.updated_at user.updated_at
