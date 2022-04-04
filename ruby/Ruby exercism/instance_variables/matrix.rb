class Matrix
    def initialize(str)
        @str = str
    end 
    def rows()
        @r = Array.new
        @r = @str.split("\n")
        @r.each do |row|
            row.insert(0, "[")
            row.insert(-1, "]")
            row.gsub(/ /, ", ")
        end
        return @r
    end
end

matrix = Matrix.new("1 2 3 \n4 5 6")
puts matrix.rows