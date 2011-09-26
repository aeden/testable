require 'testable'

class Calculator
  include Testable

  def _test_add
    assert add(1, 1) == 2
    assert add(-1, -1) == -2
  end
  def add(n1, n2)
    n1 + n2
  end

  def _test_subtract
    assert subtract(1, 1) == 0
  end
  def subtract(n1, n2)
    n1 - n2
  end
end
