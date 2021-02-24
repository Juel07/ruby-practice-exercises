# define the method
def alphabetise(arr, rev=false) #set default parameter

    # sorting with control flow
    arr.sort!
if rev == true
    arr.reverse!
else
    return arr
end
end

numbers = [3, 6, 2, 7] # create a unsorted array

puts alphabetise(numbers) # call the method