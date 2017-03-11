class Integr
  def initialize(toch = nil)
    @eps = toch
  end

  def calc
    a = 0.0
    b = 1.0
    k = 0
    enum = (1..1.0 / 0.0).lazy.map do |n|
      h = (b - a) / n
      (0..n - 1).map do |i|
        (f(a + i * h) + f(a + (i + 1) * h)) * h / 2
      end
          .reduce(:+)
    end
               .take_while do |s|
      k += 1 if (s - 1.0 / 3.0).abs <= @eps
      k < 2
    end
    enum.to_a.last
  end

  def f(x)
    x * (1 - x**2)**0.5
  end

  attr_accessor :eps
end
