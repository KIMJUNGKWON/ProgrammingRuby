class Car

  # attr_reader : Creates instance variables and corresponding methods that return the value of each instance variable.
  # 내가 자꾸 symbol 하고 헷갈리는 측면이 있는데, attr_reader 자체가 '인스턴스 변수를 만들고, 그 인스턴스 변수를 반환하는 메소드를 만들어준다'는
  # 기능을 수행한다고 알면 된다. symbol과 따로 이해하자. getter 함수명 자체가 변수명과 동일한 것이다.
  attr_reader :maker, :kind

  def initialize(maker, kind)
    p :maker
    @maker = maker
    @kind = kind
  end

end

car = Car.new("kia", "suv")
p car.maker