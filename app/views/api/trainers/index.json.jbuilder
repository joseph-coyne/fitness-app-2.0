json.array! @trainers.each do |trainer|
  json.partial! "trainer.json.jbuilder", trainer: trainer

  json.users do
    json.array! trainer.users, partial: 'api/users/user', as: :user
  end
  
end