# frozen_string_literal: true

class RepeatedSubstring # :nodoc:
  def find_repeated_substring_file(file_path)
    File.open(file_path).read.each_line.map do |line|
      find_repeated_substring(line)
    end
  end

  private

  def find_repeated_substring(string)
    possibilities = Array.new(string.length + 1) do
      Array.new(string.length + 1, 0)
    end

    result_length = index = 0
    (1...string.length).each do |i|
      (i + 1...string.length).each do |j|
        if (string[i - 1].eql? string[j - 1]) &&
           possibilities[i - 1][j - 1] < (j - i)
          possibilities[i][j] = possibilities[i - 1][j - 1] + 1

          if possibilities[i][j] > result_length
            result_length = possibilities[i][j]
            index = [i, index].max
          end
        else
          possibilities[i][j] = 0
        end
      end
    end

    save_result(index, result_length, string)
  end

  def save_result(index, result_length, string)
    result = ''
    if result_length > 1
      (index - result_length + 1..index).each do |x|
        result += string[x - 1]
      end
    else
      result += 'NONE'
    end
    puts result
  end
end
