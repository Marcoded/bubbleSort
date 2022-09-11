
initial_arr = [4,3,78,2,0,2]
test_arr = [1,2,3,4,5,6]
# [0,2,2,3,4,78]


# add a swapper counter that detect if any swap happened - if no swap then finish the loop


## sort counter, si t'as pas sort arr.lenght alors no need to sors

def bubble_sort arr
    i = 0 
    length = arr.length
    length_minus = length -1
    sorting_hapn = false
    sorting_counter = 0
    
    length_minus.times do # big loop => passes
    unless sorting_counter == 5
        i=0
        sorting_counter = 0
        arr.each do # inner loop => each element in the array
            
    unless (arr[i+1] == nil) ## prevent error #for comparing with nil
        if (arr[i] > arr[i+1])
             p "#{arr[i]} > #{arr[i+1]} : swapping" 
             arr[i], arr[i+1] = arr[i+1], arr[i]
             sorting_hapn = true
            
        elsif (arr[i] < arr[i+1])
            p "#{arr[i]} < #{arr[i+1]} : not swaping"  
            sorting_counter += 1
            p "sorting counter #{sorting_counter}"
                
            else
                p "none of the case"
            end # ifi end

            i = i+1
    end # un less end

    # p arr
    end
    end # end while sorting counter
    end # end big loop
    p arr
    end #end def



#bubble_sort(initial_arr)
bubble_sort(test_arr)