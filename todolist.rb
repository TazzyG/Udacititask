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
	def item
		@items 
	end
end
	


class Item
    # methods and stuff go here
end
