require 'sqlite3'

instruction_list_message =  <<-MESSAGE
Commands that can be used in this To-Do list app
--------------------------------------------------------------------------
CREATE list_name - to start a new list called list_name
VIEW list_name - to see tasks in the list including their ids
ADD list_name task_name - to add task_name to the list
EDIT list_name task_id new_task_name - to edit task_name to the list
DELETE_LIST list_name - to delete list_name
DELETE_TASK list_name task_id - to delete task_id in list_name
EXIT - to exit program
--------------------------------------------------------------------------
MESSAGE

puts instruction_list_message

def get_string_arguments(str)
  return str.split(" ")
end

def create_list(database, list_name)
  create_list_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS #{list_name} (
    id INTEGER PRIMARY KEY,
    task VARCHAR(255)
  )
SQL

  database.execute(create_list_cmd)
end

def view_list(database, list_name)
  view_list_cmd = "SELECT * FROM " + list_name + ";"

  # p view_list_cmd

  results = database.execute(view_list_cmd)
  # puts results.class
  # p results
  puts "---------------------------"
  puts "Viewing '#{list_name}' List"
  puts "---------------------------"
  results.each do |row|
    puts "#{row[0]}| #{row[1]}"
  end
  puts "---------------------------"
end

def add_task(database, list_name, task_name)
  add_task_cmd = <<-SQL
  INSERT INTO #{list_name} (task)
  VALUES ('#{task_name}');
   SQL
  # p add_task_cmd
  database.execute(add_task_cmd)

  puts "---------------------------"
  puts "'#{list_name}' List with added task"
  puts "---------------------------"
  view_list(database, list_name)
  puts "---------------------------"
end

def edit_list(database, list_name, task_id, new_task_name)
  edit_list_cmd = "UPDATE " + list_name + " SET task = '" + \
  new_task_name + "' WHERE id = " + task_id.to_s + ";"

  # p edit_list_cmd

  database.execute(edit_list_cmd)

  puts "---------------------------"
  puts "'#{list_name}'' List with new edit"
  puts "---------------------------"
  view_list(database, list_name)
  puts "---------------------------"
end

# def display_lists(database)
#   display_cmd = <<-SQL
#     SELECT name FROM sqlite_master WHERE type='table';
#   SQL
#   database.execute(display_cmd)
# end

def delete_list(database, list_name)
  delete_list_cmd = <<-SQL
    DROP TABLE #{list_name}
  SQL
  database.execute(delete_list_cmd)
end

def delete_task(database, list_name, task_id)
  delete_task_cmd = <<-SQL
    DELETE FROM #{list_name}
    WHERE id IS #{task_id};
  SQL
  database.execute(delete_task_cmd)

  puts "---------------------------"
  puts "List with task removed"
  puts "---------------------------"
  view_list(database, list_name)
  puts "---------------------------"
end

db = SQLite3::Database.new("to_do_list.db")

# create_list(db, 'school')
# #view_list(db, 'school')
# add_task(db, 'school', 'chemistry')
# #view_list(db, 'school')
# edit_list(db, 'school', 3, 'physics')
# puts "---"
# view_list(db, 'school')
# delete_task(db, 'school', 1)
# puts "---"
# view_list(db, 'school')
# # delete_list(db, 'school')
# # display_lists(db)

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

  case instruction_arr[0]
  when 'CREATE'
    create_list(db, instruction_arr[1])
  when'VIEW'
    view_list(db, instruction_arr[1])
  when 'ADD'
    add_task(db, instruction_arr[1], instruction_arr[2])
  when 'EDIT'
    edit_list(db, instruction_arr[1], instruction_arr[2],\
      instruction_arr[3])
  when 'DELETE_LIST'
    delete_list(db, instruction_arr[1])
  when 'DELETE_TASK'
    delete_task(db, instruction_arr[1], instruction_arr[2])
  end

  instruction = gets.chomp
  instruction_arr = get_string_arguments(instruction)
end

