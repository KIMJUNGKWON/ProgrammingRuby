p "**************************************"
p "yield와 함수의 상호작용을 통한 처리"
def find1
  p "good!" if yield == "banana"
end
find1{"banana"}


p "**************************************"
p "each"
# Array
# public method #each(*several_variants) → Array<Fixnum>
# ary.each { |item| block } -> ary ary.each -> Enumerator
# Calls the given block once for each element in self,
# passing that element as a parameter. Returns the array itself.
arr = [1,2,3,4,5]
arr.each do |value|
  p value
end
temp_arr1 = arr.each
p temp_arr1


p "**************************************"
p "collect"
# Array
# public method #collect(*several_variants) → Array
# ary.collect { |item| block } -> new_ary ary.collect -> Enumerator
# Invokes the given block once for each element of self.
# Creates a new array containing the values returned by the block.  See also Enumerable#collect.
arr.collect do |value|
  p value
end
temp_arr2 = arr.collect
p temp_arr2
# collect와 each 무슨 차이인지 명확히 이해가 안감. 나중에 다시 찾아봐서 정리해둘것.


p "**************************************"
p "enum과 loop의 연계"
a = [1, 2, 3, 4, 5]
enum_a = a.to_enum()
p enum_a
p enum_a.next # 1
p enum_a.next # 2
p enum_a.next # 3
p enum_a.next # 4
p enum_a.next # 5

# enum 과 loop 를 같이 사용하는 장점으로는
# 알아서 끝 범위를 정해주지 않아도 next를 통해 끝에 다다르면 알아서 루프가 끝난다는 것
enum_loop_arr = ["a", "b", "c", "d", "e"]
temp_enum = enum_loop_arr.to_enum()
loop do
  p temp_enum.next()
end