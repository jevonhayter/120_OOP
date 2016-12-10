class Banner
  attr_reader :message 

  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    dash = '-'
    new_line = dash * (message.length + 2)
    line = "+#{new_line}+"
  end

  def empty_line
    space = ' '
    full_space = space * (message.length + 2)
    empty = "|#{full_space}|"
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('')
puts banner