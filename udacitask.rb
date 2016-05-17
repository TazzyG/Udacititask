require_relative 'todolist.rb'

# Creates a new todo list
list_one = TodoList.new("My First To Do List: ")

# Add four new items
list_one.add_item("get coffee")
list_one.add_item("get wine")
list_one.add_item("learn ruby")
list_one.add_item("buy movie tickets")

# Print the list
list_one.print_list

# Delete the first item
list_one.delete_item(1)

# Print the list
list_one.print_list

# Delete the second item
list_one.delete_item(2)

# Print the list
list_one.print_list

# Update the completion status of the first item to complete
list_one.update_item_status(1, true)

# Print the list
list_one.print_list

# Update the title of the list
list_one.update_title("Friday List")

# Print the list
list_one.print_list


# FEATURES 
# Added Created Date and Due date (see by printing the list)
list_one.print_list
# Update the date required in the first item 
list_one.update_date_required(1,5)
# Print the list
list_one.print_list
# Add Users and Assign Tasks
list_one.add_assignment(1, "Laurie")
# Print the list
list_one.print_list_of_uncompleted_tasks
# Print the list of open Tasks





