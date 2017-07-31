require 'sqlite3'

puts <<-MESSAGE
Commands that can be used in this To-Do list app
--------------------------------------------------------------------------
CREATE list_name - to start a new list called list_name
VIEW list_name - to see tasks in the list including their ids
ADD list_name task_name - to add task_name to the list
EDIT list_name task_id new_task_name - to edit task_name to the list
DELETE_LIST list_name
DELETE_TAST task_name
EXIT - to exit program
--------------------------------------------------------------------------
MESSAGE

db = SQLite3::Database.new("to_do.db")

def get_string_arguments(str)
  return str.split(" ")
end

instruction = gets.chomp
p get_string_arguments(instruction)

create_list_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
  )
SQL