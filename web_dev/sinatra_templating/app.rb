# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students;")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/students/age/:age' do
  @students_age = db.execute("SELECT * FROM students WHERE age > #{params['age'].to_i}")
  erb :greater_than_age
end

# create campuses table in the database
db.execute("CREATE TABLE IF NOT EXISTS campuses (id INTEGER PRIMARY KEY, campus VARCHAR(255));")

get '/campuses' do
  @campuses = db.execute("SELECT * FROM campuses;")
  erb :campuses
end

get '/campuses/add_campus' do
  # db.execute("INSERT INTO campuses (campus) VALUES (?);", [params['campus']])
  erb :add_campus
end

post '/campuses/campus_added' do
  db.execute("INSERT INTO campuses (campus) VALUES (?);", [params['campus']])
  redirect '/campuses'
end


