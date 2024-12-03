def extract_diamonds_and_sands(expression)
  diamonds = 0
  sands = 0

  loop do
    original_length = expression.length

    while expression.include?('<>')
      expression.sub!('<>', '')
      diamonds += 1
    end

    sands += expression.count('.')
    expression.delete!('.')

    break if expression.length == original_length
  end

  { diamantes: diamonds, areias: sands }
end

expression = "<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>"
result = extract_diamonds_and_sands(expression)

puts "Quantidade de diamantes extraídos: #{result[:diamantes]}"
puts "Quantidade de areias removidas: #{result[:areias]}"

