json.todos @todos do |todo|
  json.content todo.content
  json.dateCreated todo.dateCreated
  json.timeNeeded todo.timeNeeded
  json.calendarApp todo.calendarApp
  json.dateDue todo.dateDue
  json.bestBy todo.bestBy
  json.importance todo.importance
  json.category todo.category
  json.id todo.id
end
