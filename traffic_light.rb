require 'highline'
cli = HighLine.new

class TrafficLight
  def self.command(light)
    light.downcase
    case light
    when 'red'
      'Stay'
    when 'green'
      'Go'
    when 'yellow'
      'Stop'
    when 'stop'
      working(false)
    else
      'Please input red, green, or yellow as a light'
    end
  end

  def self.working(b = true)
    b
  end
end

while TrafficLight.working
  answer = cli.ask('Please enter a light (yellow, green, red), or stop, to stop the program', String)
  puts "#{TrafficLight.command(answer)}"
end
