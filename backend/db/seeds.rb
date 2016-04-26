# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Todo.delete_all

Todo.create!([
  {id: 1, content: "pick up eye drops", dateCreated: "2016-04-07T18:16:12.570Z", timeNeeded: 14, calendarApp: false, dateDue: "2016-04-07T18:16:12.570Z", bestBy: "2016-04-07T18:16:12.570Z", importance: 5, category: "errands"}
])
