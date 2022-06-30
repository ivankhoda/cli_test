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
      'Good bye and have a nice day'
    else
      'Please input red, green, or yellow as a light'
    end
  end
end

work = true
while work
  answer = cli.ask('Please enter a light (yellow, green, red), or stop, to stop the program',
                   String)
  puts "#{TrafficLight.command(answer)}"
  work = false if answer.downcase == 'stop'
end
