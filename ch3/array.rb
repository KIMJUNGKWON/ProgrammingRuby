# 루비는 처음이므로 책에 나온 모든 함수들 다 짚고 넘어가기
# 특히 다른 함수를 사용함으로써 array를 stack과 queue로 활용하는 것 숙지



# Array 의 정의와 생성
# class Array < Object
# Arrays are ordered, integer-indexed collections of any object.
# Array indexing starts at 0, as in C or Java.
# A negative index is assumed to be relative to the end of the array

arr1 = []
p arr1.class # => Array

arr2 = Array.new()
p arr2.class # => Array


# Array의 내장 함수
test_arr = [1, "hello", 3, 6, "jk", "apple", 10]
p test_arr.length() # => 7
p test_arr[1] # => "hello"
p test_arr # => [1, "hello", 3, 6, "jk", "apple", 10]
p test_arr.inspect # => "[1, \"hello\", 3, 6, \"jk\", \"apple\", 10]"
p test_arr[1, 3] # => ["hello", 3, 6] => array[start, count] 은 array[start]부터 count개 원소가 담긴 array를 return
p test_arr[3..6] # => [6, "jk", "apple", 10] => array[n..m] 은 array[n]부터 array[m]까지의 값을 경계 포함하여 array를 return
p test_arr[3...6] # => [6, "jk", "apple"] => array[n...m] 은 array[n]부터 array[m]까지의 값을 경계 불포함하여 array를 return

p test_arr[1, 4] # => ["hello", 3, 6, "jk"]
test_arr[1, 4] = [] # => start부터 count개 부분을 [] 처리
p test_arr # => [1, "apple", 10]

p "************************************************************************"
p "Array 활용 => Stack"
# Array 활용 => Stack
stack = []
stack.push("1_apple")
stack.push("2_orange")
stack.push("3_banana")
stack.push("4_grape")
p stack # => ["1_apple", "2_orange", "3_banana", "4_grape"]

# Array
# public method #pop(*several_variants)
# ary.pop -> obj or nil ary.pop(n) -> new_ary  Removes the last element from self and returns it,
# or nil if the array is empty.
p stack.pop() # => "4_grape"
p stack # => ["1_apple", "2_orange", "3_banana"]
p stack.pop(2) # => ["2_orange", "3_banana"]

p "************************************************************************"
p "Array 활용 => queue"
# Array 활용 => queue
queue = []
queue.push("1_apple")
queue.push("2_orange")
queue.push("3_banana")
queue.push("4_grape")
p queue

p queue.shift() # => queue
p queue # => ["2_orange", "3_banana", "4_grape"]
p queue.shift(2) # => ["2_orange", "3_banana"]
p queue # => ["4_grape"]


p "************************************************************************"
p "first, last 활용"
# Array를 stack과 queue로 활용할 수 있다는 사실과 push, pop, shift 를 숙지하는 것은 맞지만
# 사실 Array에는 first(count), last(count)함수가 있다.
arr_test = [1, 2, 3, 4, 5]
p arr_test # => [1, 2, 3, 4, 5]
p arr_test.first # =>  1
p arr_test.first(3) # => [1, 2, 3]
p arr_test.last # => 5
p arr_test.last(3) # => [3, 4, 5]