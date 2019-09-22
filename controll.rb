# 제어 구조
# 루비에서는 if문과 while문과 같은 보편적인 제어문에 { } 가 없다는 것을 유의한다
# 단, 제어문의 마지막은 { }가 없는 대신 end 로 표현한다

# 조건문
# 조건문의 if ( )에서 괄호는 생략이 가능하다
test_str = "JKKIM"
if(test_str == "JK")
  p "같다"
elsif (test_str == "JKKIM")
  p "JKKIM이다"
else
  p "그 외의 경우"
end
# 조건문 안의 내용이 한 줄인 경우 축약이 가능하다
p "한 줄로 처리 가능" if test_str == "JKKIM"


# 반복문
test_num = 1
while test_num < 5
  p test_num
  test_num += 1
end
# 반복문도 조건문과 마찬가지로 반복문 안의 내용이 한 줄일 경우 전체를 한 줄로 처리가 가능하다
num = 30
p num # => 30
num = num*num while num < 1000
p num # => 810000