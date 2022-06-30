require 'highline'
cli = HighLine.new
def c2f(celsius)
  celsius * 9.0 / 5 + 32
end
answer = cli.ask('Please input degrees in Celsius', Integer)
puts "#{c2f(answer)}"
