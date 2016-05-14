class TodoList
	attr_reader :title, :items
	# Initialize todo list with a title and no items
	def initialize(list_title)
	  @title = list_title
	  @items = Array.new # Starts empty! No Items yet!
	end
	def title
		@title 
	end
	def update_title(new_title)
  	@title = new_title
	end
	def item
		@items 
	end
	# add_item to the list
	def add_item(new_item)
	item = Item.new(new_item)
	@items << item
	end
	# changing status on specific task
  def update_item_status(index, status)
        @items[index - 1].update_task_status(status)
  end

	# delete_item from the list
	def delete_item(index)
		@items.delete_at(index-1)
	end 
	def border
	puts "-" * 50
	end
	def print_list_title
        border
        puts @title
        border
  end
	def print_list
		# print list title
		print_list_title
		@items.each_with_index do |task, index|
			puts "#{task.print_task}"
		end
	end
end
	
class Item

	attr_reader :description, :completed_status

	# Initialize item with a description and marked as
	# not complete
	def initialize(item_description)
	  @description = item_description
	  @completed_status = false
	end
	def add_item(new_item)
	  @item = Item.new(new_item)
	  @items.push(item)
	end
	# changing status of the task
  def update_task_status(status)
      @completed_status = status
  end

  # returning "true" if status is "done"
  def completed?
      @completed_status
  end

	def print_task
       puts "Description: #{@description}" 
  end

  
end

class User
	attr_reader :first_name, :last_name

	# Initialize user 
	# not complete
	def initialize(first_name, last_name)
	  @first_name = first_name
	  @last_name = last_name
	end

	def add_user(new_user)
		user = User.new(new_user)
		@users.push(user)
	end

	def find_user(last_name)
		@user.find_by(last_name)
	end

	def delete_user
		@user.find_by(last_name)
		@user.destroy
	end

	def name
		"#{@first_name } #{@last_name}"
	end


end

