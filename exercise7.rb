# Exercise 7. 

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

#     For each cohort, display the cohort name and the amount of
#     students like so. It's probably best that you create a method.

def cohort_rpt( cohorts )
  cohorts.each do |key,val| 
    cname = key
    csize = val 
    puts "#{cname}: #{csize} students."
  end
end

cohort_rpt( students )

#     Add 43 as the amount of students for cohort 4.
students[:cohort4] = 43


#     Output all of the cohort names with the keys method.
students.keys.each do |name|
  puts name 
end

#     The classrooms have been expanded: increase each cohort number
#     by 5% and display the new results.
students.each do |k,v|
  modified = ( v * 105 ) / 100
  students[k] = modified
end

cohort_rpt( students )

#     Delete the 2nd cohort, and redisplay the cohorts
students.delete( :cohort2 )
puts "remove second cohort:"
cohort_rpt( students )

#     BONUS: Calculate the total amount of students in all cohorts by
#     using each and incrementing a variable. Output the result.
total = 0
students.each do |key,val|
  cname = key
  csize = val 
  total += csize
end 

puts "the total amount of students in all cohorts: #{total}."




