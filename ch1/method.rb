# [함수]
# 루비에서의 함수는 { } 와 같은 중괄호가 없으며 def ~ end 로 표현될 수 있다
def say_goodnitght(name)
  result = "Good night, " + name
  return result
end

# 통상적으로 함수의 인자를 감싸는 괄호 ( )도 생략이 가능하다
# 다만 가독을 위해서 넣어 주는 것을 습관으로 들이자
puts say_goodnitght("john") # => Good night, john
puts (say_goodnitght("john")) # => Good night, john

# [' ' vs " "]
# 문자열을 '' 이 아닌 ""을 사용할 경우 두 가지가 더 가능해진다
# 1) #{ }을 이용해서 동일 주소값을 " " 내부에서 직접 바라볼 수 있도록 한다. #{ } 에서 name.capitalize와 같은 표현식도 가능.
# 2) \n 을 사용하여 줄바꿈이 가능해진다
def say_goodmorning(name)
  result = "Good morning, #{name} \n I'm john"
  return result
end
puts(say_goodmorning("mike")) # => Good morning, mike (줄바꿈) I'm john

# return의 유무
# 루비 메서드에서 반환하는 값은 마지막 실행된 라인의 결과값이므로 return 을 생략할 수 있음
def say_hello(name)
  "Hello , #{name}"
end
puts(say_hello("kang")) # => Hello , kang