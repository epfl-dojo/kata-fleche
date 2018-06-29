puts "What is the arrow's height ?"

height = gets.to_i

space_between = -1

(1..height * 2).each do |line|
  text = ''

  if line == height
    (1..height * 2 - 1).each do
      text += '*'
    end
  elsif line < height
    (1..height - line).each do
      text += ' '
    end

    text += '*'

    if space_between > 0
      (1..space_between).each do
        text += ' '
      end
    end

    text += '*' if line != 1
  else
    (1..height - 1).each do
      text += ' '
    end
    text += '*'
  end

  space_between += 2
  puts text
end