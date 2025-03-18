class StringCalculator
  def self.add(num_str)
    return 0 if num_str.empty?

    delimiter = /,|\n/

    if num_str.start_with?("//")
      data      = num_str.split("\n", 2)
      delimiter = data[0][2]
      num_str   = data[1]
    end

    num_arr   = num_str.split(/#{delimiter}/).map(&:to_i)
    negatives = num_arr.select { |n| n < 0 }

    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    num_arr.sum
  end
end
  