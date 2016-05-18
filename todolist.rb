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
		@items.push(item)
	end
	def add_assignment(index, name)
		@items[index - 1].assign_user(name)
	end
	# changing status on specific task
  def update_item_status(index, status)
    @items[index - 1].update_task_status(status)
  end
  def update_date_required(index, days)
    @items[index - 1].update_date_required(days)
  end
	# delete_item from the list
	def delete_item(index)
		@items.delete_at(index-1)
	end
	def border
	puts "-" * 50
	end
	def pretty_line
	  border
	  puts @title
	  border
  end
	def print_list
		pretty_line
		@items.each_with_index do |task, index|
			puts "#{task.print_task}"
		end
		puts 
	end	
	def print_list_of_uncompleted_tasks
		pretty_line
		@items.each_with_index do |task, index|			
			puts "#{task.print_open_tasks}"
		end
		puts 
	end
	def delete_completed_tasks
		@items.each_with_index do |task, index|			
			 if task.completed? task.task_delete(index)
			end
	  end
	end
end
	
class Item

	attr_reader :description, :completed_status, :date_created, :date_required

	# Initialize item with a description and marked as
	# not complete
	def initialize(item_description)
	  @description = item_description
	  @completed_status = false
	  @date_created = Time.new.strftime("%B %d, %Y")
	 	@date_required = Time.now.strftime("%B %d, %Y")
	end
	def user
		@users
	end
	def name
		@user.name
	end
	def complete
		@completed_status = true
	end
	def assign_user(name)
		@user = User.new(name)
	end
	# changing status of the task
  def update_task_status(status)
      @completed_status = status
  end
  def update_date_required(days)
  	d = Time.new
  # Time in seconds. There are 86400 seconds in 1 day
  	@date_required = d + (days * 86400)
  end
  # returning "true" if status is "done"  
	def print_task	
  end
  def print_open_tasks
  	if @completed_status == false
    	"Description: #{ @description }, by: (#{ @date_required}) assigned to: (#{@user.name if @user})"
  	end
  end
  
  def task_delete(index)
  	@items.shift_at(index)
  end
  
end
class User
	attr_reader :name
	# Initialize user 
	# not complete
	def initialize(name)
	  @name = name
	end
	def assign_user(name)
		@user = User.new(name)
	end
	def name
		@name 
	end
end


