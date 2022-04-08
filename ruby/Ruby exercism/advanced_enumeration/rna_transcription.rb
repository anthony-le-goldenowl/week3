class Complement
  def self.of_dna(str)
    new = ""
    str.each_char { |c|
        case c
        when 'C'
            c = 'G'
            new += c
        when 'G'
            c = 'C'
            new += c
        when 'A'
            c = 'U'
            new += c
        when 'T'
            c = 'A'
            new += c
        end
    }
    new
  end
end

puts Complement.of_dna("ACGC")