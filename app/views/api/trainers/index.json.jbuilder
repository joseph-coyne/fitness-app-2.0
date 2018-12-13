json.array! @trainers.each do |trainer|
		json.partial! "trainer.json.jbuilder", trainer: trainer
end