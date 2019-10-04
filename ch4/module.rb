# 모듈
# 모듈은 클래스와 비슷하게 함수도 가지고 상수도 가진다.
# 하지만, '객체화'가 불가능하다. 즉, new(=initialize)가 불가능하다
# 그럼 왜 쓸까? 두 가지 목적이 있다.
# 1) 믹스인을 통한 기능의 공유(for 반복 없애기)
# 2) 네임스페이스로서의 기능을 통해 충돌 방지


require 'digest' # <= 모듈은 이렇게 require을 통해 사용한다

module Encryption
  def encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end

class Person
  include Encryption
  attr_accessor :password

  def initialize(name)
    @name = name
  end

  def encrypted_password
    encrypt(@password) # <= 여기가 핵심. 있지도 않는 encrypt를 사용. 모듈에서 가져온 것이다.
  end
end

person = Person.new("JK")
person.password = "super secret"
puts person.encrypted_password # => eabd522910ccdd77aef079feff0c7bb6486f6ab207ae6d3ed9e671208c92ab0f

