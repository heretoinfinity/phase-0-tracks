require 'sqlite3'

puts <<-MESSAGE
Commands that can be used in this To-Do list app
--------------------------------------------------------------------------
CREATE(list_name) - to start a new list called list_name
VIEW(list_name) - to see tasks in the list including their ids
ADD(list_name, task_name) - to add task_name to the list
EDIT(list_name, task_id, new_task_name) - to edit task_name to the list
EXIT - to exit program
--------------------------------------------------------------------------
MESSAGE