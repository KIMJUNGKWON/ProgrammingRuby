# 블록
# 루비에서 블록은 마치 매개 변수 처럼 메서드 호출과 결합할 수 있는 코드
# C의 포인터보다 더 유연하다고 할 수 있다

def say_hello
  p "Hi"
  yield # => yield문은 yield를 포함하는 메서드에 연관된 블록을 호출하는 기능을 한다
end
say_hello{puts("Hello")}

# 블록은 {|param|}의 형태로 파라미터도 받을 수 있다
def say_goodbye
  p "bye"
  yield("JK")
end
say_goodbye{|name| puts("good bye #{name}")}