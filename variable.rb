=begin
지역변수 : name
인스턴스 변수 : @name
클래스 변수 : @@name
전역 변수 : $debug
상수 이름 : NAME
=end

# 변수 용도가 다르면 변수 명이 같아도 다르게 관리된다
# 하지만, 가독성이 매우 떨어지므로 변수명 자체를 다르게 사용할 것
# 그리고 인스턴스와 클래스 변수의 경우 변수 명이 다르면 경고 메세지가 발생(warning: class variable access from toplevel)
name = "john"
@name = "miki"
puts(name) # => john
puts(@name) # => miki
puts(name) # => john

# 상수 변수도 마찬가지로 대소문자, 종류를 구분하여 다르게 저장된다
# 하지만 가독성을 위해 다른 변수명을 사용할 것
MYNAME = "myname 상수변수"
myname = "myname 지역변수"
puts(MYNAME) # => myname 상수변수
puts(myname) # => myname 지역변수




