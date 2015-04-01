
# We're going to make a shopping list by storing a few items in an
# array. Feel free to start with whatever items you like:

grocery_list = ["carrots", "toilet paper", "apples", "salmon"]

#     Your next step should present your grocery list with an item on
#     each line, with an asterisk (*) in front of it so that it
#     appears like this:

def show_list( grocery_list )
  grocery_list.each do |g| 
    puts " * #{g}"
  end 
  puts "\n" 
end
show_list( grocery_list )

#     You realize you've forgotten some rice, add it to your list and
#     output it again. Given that you've already output your list
#     twice, it might be good to consider writing a method to do
#     this. Putting common bits of code in a method lets you reuse it
#     throughout your program.

grocery_list << "rice" 
show_list( grocery_list )

#     You lost count of how many things you need to pick up. Better
#     output the total number of items on your list.

puts "The total number of items on my list is #{grocery_list.count}." 

#     Check to see if your list includes "bananas". If it does, output
#     "You need to pick up bananas". Otherwise, output "You don't need
#     to pick up bananas today".

if !grocery_list.include?( "bananas" )
  puts "You need to pick up bananas."
else 
  puts "You don't need to pick up bananas today."
end 

#     Display the second item in the list. (Don't forget that arrays
#     are zero-indexed!)
puts "The second item in the list is #{grocery_list[1]}."

#     It turns out that everything in this grocery store you're
#     visiting is stored alphabetically, so to better plan out what
#     you need to buy, you should sort your grocery list and output it
#     with asterisks again.

sorted_list = grocery_list.sort
puts "\n\n The sorted list is: "
show_list( sorted_list )

#     After looking everywhere, you can't find the salmon. Delete it
#     from your list and redisplay it.

grocery_list.delete("salmon")

puts "\n\n The salmon-free list is: "
show_list( grocery_list )

# After you're done, be sure you have everything committed and pushed
# to your github repo.

