# 루비에서는 모든 함수가 기본적으로 public(initialize는 예외적으로 private)이다.
# protected 는 해당 클래스와 해당 클래스 내에서 생긴 클래스 끼리 공유하는 메소드이며
# private 의 경우에는 오직 해당 클래스(self)에서만 사용이 가능하다.
# 개념은 아니까 사용법만 짚고 넘어간다

class AccessControll

  private
  def dosomething1

  end

  protected
  def dosomething2

  end

end