require 'sqlite3'

instruction_list_message =  <<-MESSAGE
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

puts instruction_list_message

def get_string_arguments(str)
  return str.split(" ")
end

create_list_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255)
  )
SQL

db = SQLite3::Database.new("to_do.db")



instruction = gets.chomp
instruction_arr = get_string_arguments(instruction)
allowed_commands = ['CREATE', 'VIEW', 'ADD', 'EDIT', \
  'DELETE_LIST', 'DELETE_TASK', 'EXIT']

while instruction_arr[0] != 'EXIT'
  #p get_string_arguments(instruction)
  if allowed_commands.index(instruction_arr[0]) == nil
    puts "======================================"
    puts "ERROR: ENTER COMMANDS IN GIVEN FORMAT"
    puts "======================================"
    puts instruction_list_message
  end
  instruction = gets.chomp
  instruction_arr = get_string_arguments(instruction)
end

