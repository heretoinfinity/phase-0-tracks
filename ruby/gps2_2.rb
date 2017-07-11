# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # split the string into an array
  # create empty hash
  # populate hash as we traverse the array
  # set the quantities (keys) to 0
  # return hash

  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(str)
  arr = str.split(' ')

  list = {}

  arr.each { |item|
    list[item] = 0
  }
  return list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# (hash, str, integer)
# steps:
  # Check if quanitity is in the list
  # IF it is
  #   Add the extra quantity
  # ELSE
  #   create a new item in the list with given quantity
  #   (Make the item name a key to the list)
  # return the list
# output: updated list (hash)

def add_item(list, item, quantity)
  if list.has_key?(item)
    list[item] = list[item] + quantity
  else
    list[item] = quantity
  end
  return list
end
groceries = "carrots apples cereal pizza"
groceries_hash = create_list(groceries)

add_item(groceries_hash, 'carrots', 4)
#puts groceries_hash
add_item(groceries_hash, 'beets', 4)
#puts groceries_hash

# Method to remove an item from the list
# input: list, item
# steps:
# check if item is in the list
#   IF so
#     delete the item
#   ELSE
#     print an error message that it doesn't exist
#   return the new list
# output: updated list

def remove_item(list, item)
  if list.has_key?(item)
    list.delete(item)
  else
    puts "ERROR: Item not in list"
  end
  return list
end

# puts groceries_hash
# remove_item(groceries_hash, 'balloons')
# puts groceries_hash

# Method to update the quantity of an item
# input: list, item, new quantity
# steps:
# Check to see if item is in the list
#   IF so
#     update the quantity
#   ELSE
#     give an error
# Return the updated list
# output: list

def update_item(list, item, quantity)
  if list.has_key?(item)
    list[item] = quantity
  else
    puts "ERROR: Item not in list"
  end
  return list
end
# puts groceries_hash
# update_item(groceries_hash, 'beets', 99)
# puts groceries_hash
# update_item(groceries_hash, 'balloons', 99)
# puts groceries_hash

# Method to print a list and make it look pretty
# input: hash
# steps:
# IF empty list
#   say no list
# ELSE
#   Iterate through list and print item and its quantity

# output: string (printed and not return value)

def print_list(list)
  if list.empty?
    puts "List is EMPTY"
  else
    puts "The list has:"
    list.each{ |key, value|
      p "#{value} #{key}"
    }
  end
end
print_list(groceries_hash)
print_list({})

