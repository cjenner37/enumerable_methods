# apparently I'll need to "remember yield and the #call method"
# getting solutions from https://github.com/Jberczel/odin-projects/blob/master/ruby_advanced/project2.rb


arr = [4,3,6,4,9,5]

module Enumerable

	def my_each
		return self unless block_given?
		for i in self
			yield(i)
		end
	end

	def my_each_with_index
		return self unless block_given?
		for i in 0...length
			yield(self[i], i)
		end
	end

	def my_select
		return self unless block_given?
		new_array = []
		my_each { |i| new_array << i if yield (i) }
	end

	def my_all?
		if block_given?
			my_each { |i| return false unless yield(i) }
		else
			my_each { |i| return false unless i }
		end
		true
	end

	def my_any?
		if block_given?
			my_each { |i| return true if yield(i) }
		else 
			my_each { |i| return true if i }
		end
		false
	end

	def my_none?
	end
	def my_count
	end
	def my_map
	end
	def my_inject
		# there's a note at Odin
	end
	def my_map
		# modify to take a proc
	end
	def my_map
		# there's a  note at Odin
	end
	# Here's one I added: 
	def my_reverse(string)
		a = string.length - 1
		@new_string = ""
		a.downto(0) { |i| @new_string << string[i] }
		print @new_string
	end
	# note: it didn't work until I added a space 
	# between - and 1... interesting
	# also, I haven't figured out how to make it work as a method like the others
end

arr.my_each { |num| print num }
