# 배열, 해시
# 공통점 : 둘다 indexed collection(key값이 있음)
# 차이점 : 배열의 경우 key값으로 정수만 사용 가능


# 배열
# 자료형 구분 없이 이것저것 담을 수 있음(물론 해시도 그러하다)
a = [1, "첫번째", 3.15]
puts("first element : #{a[0]}")
puts("second element : #{a[1]}")
puts("third element : #{a[2]}")
# inspect는 "Creates a string representation of self."로서
# 자신을  [ ]리터럴 까지 포함한 순수 String으로 반환한다
b = a.inspect
puts(b) # => [1, "첫번째", 3.15]
puts(b[0]) # => [

# 해시
# 배열의 리터럴은 [] 인 반면 해시의 리터럴은 {} 을 사용
# 왼쪽이 key, 오른쪽이 value 이며,
# key와 value 에는 각각 그 어떤 타입이 와도 상관이 없다
inst_section = {
    'cello' => 'string',
    'clarinet' => 'woodwind',
    'drum' => 'percussion',
    1 => 'one',
    2 => ['one', 'two'],
    3 => 3
}
# 출력값의 "" 은 type을 명확히 보여주기 위해 출력된 것
# int 형의 경우 "" 가 없음을 알 수 있다
p inst_section['cello'] # => "string"
p inst_section['clarinet'] # => "woodwind"
p inst_section['drum'] # => "percussion"
p inst_section[1] # => "one"
p inst_section[2] # => ["one", "two"]
p inst_section[3] # => 3
p "*****************************"

# p vs puts
# 둘 다 콘솔에 출력 후 줄바꿈 기능을 수행한다
# 하지만 p 의 경우 nil과 같은 것까지 포함하여 모두 명시적으로 출력
nil_test = nil
puts(nil_test) # => 아무것도 출력되지 않음
p(nil_test) # => nil 이라고 출력됨
p "*****************************"

# Hash 기본값의 변경
# new() 함수를 통해서 nil이 기본이 아닌 0을 기본으로 만들 수 있다
ah = Hash.new()
bh = Hash.new(0)
p ah['ruby'] # => nil
p bh['ruby'] # => 0





