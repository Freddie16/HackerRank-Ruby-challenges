def skip_animals(animals, skip)
    result = []
    animals[skip..-1].each_with_index do |animal, index|
      result << "#{index + skip}:#{animal}"
    end
    result
  end