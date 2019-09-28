class Cafe

# attr_accessor
# Module
# private method #attr_accessor(*several_variants)
# attr_accessor(symbol, ...) -> nil attr_accessor(string, ...) -> nil
# Defines a named attribute for this module, where the name is symbol.id2name,
# creating an instance variable (@name) and a corresponding access method to read it.
# Also creates a method called name= to set the attribute.

  attr_accessor :coffee

  def initialize(coffee)
    @coffee = coffee
  end

end

cafe = Cafe.new("caffelatte")
p cafe.coffee

cafe.coffee = "americano"
p cafe.coffee

# 클래스를 만들 때에 외부에 이 클래스를 어떻게 보일 것인가에 대한 생각자체가 중요하다.
# 결국 이렇게 '속성'과 '메소드'의 경계가 모호한 상황에서 확실하게 말할 수 있는 것은
# 외부에서 이 클래스가 어떻게 보일 것인가에 대한 고민은 '속성'으로 풀어내는 것이고
# 그 외에 클래스 내부의 상태 관리는 인스턴스 변수를 통해 하는 것이다.
# 그리고 그 외에 모든 행위들은 해당 클래스의 일반 메소드를 통해 처리한다.
# 필요하다고 생각없이 기계적으로 클래스를 만드는 것이 아니라 애초에 클래스를 생성 할 때에
# 이런 관점 자체를 생가갛면서 만드는 것이 고수와 하수의 차이인 것 같다.
#
# 이 이슈는 결국 커플링(coupling)(=결합도) 이슈로 직결된다.
# 클래스를 외부에 많이, 깊이있게 개방할 수록 결합도가 높아지게 된다.