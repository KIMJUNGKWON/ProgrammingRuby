# 심볼
# 유일한 값을 사용해야할 경우 상수에 값을 정해서 이 상수 값을 이용할 수 있다
# 하지만 루비에서는 이러한 문제를 더 간단하개 해결 하도록 심볼을 제공해준다
# 심볼의 핵심은 '특별한 값을 할당해주지 않아도 루비가 알아서 고유값으로 관리'하는 것이다

# 상수를 이용한 고유값 관리 방식
EAST = 1
WEST = 2
SOUTH = 3
NORTH = 4
if EAST != WEST
  p "다르다"
end

# 심볼을 이용한 고유값 관리 방식(:var 로 선언하며 이것 자체가 곧 값이기도 하다)
:east
:west
:south
:north
if :east != :west
  p "다르다"
end

# 심벌은 해시의 키로 주로 사용된다
inst_section = {
    :oboe => 'woodwind'
}
p inst_section[:oboe] # => "woodwind"
# 심벌을 해시의 키로 사용시 축약하는 방법
inst_section_2 = {
    oboe: 'woodwind'
}
p inst_section_2[:oboe]

