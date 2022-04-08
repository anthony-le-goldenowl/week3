class BinarySearch
    def initialize(arr)
        @arr = arr
    end

    def search_for(key)
        front = 0
        back = @arr.length - 1
        while front <= back
            middle = (front + back) / 2
            return middle if @arr[middle] == key

            if key < @arr[middle]
                back = middle - 1
            else
                front = middle + 1
            end
        end
        nil
    end
end

bs = BinarySearch.new([12,14,-2,0,5,-16,115,17,45])
puts bs.search_for(14)

