json.array! @tags.each do |tag|
  json.partial! "tag.json.jbuilder", tag: tag
end