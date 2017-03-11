require './main_class'

print 'Задайте точность: '
epsilon = 1e-3 # gets.to_f
int = Integr.new(epsilon)
puts "Значение интеграла, при заданной точности #{int.eps}: #{int.calc}"
