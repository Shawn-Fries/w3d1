class Array
    def my_each(&block)
        i = 0
        
        while i < self.length
            block.call(self[i])
            i += 1
        end
        self
    end

    def my_select(&block)
        result = []
        self.my_each do |ele|
            result << ele if block.call(ele)
        end
        result
    end

   def my_reject(&block)
       result = []
       self.my_each do |ele|
            result << ele if !block.call(ele)
        end

       result
    end

    def my_any?(&block)
        self.my_each do |ele|
            return true if block.call(ele)
        end
        false
    end

    def my_all?(&block)
        self.my_each do |ele|
            return false if !block.call(ele)
        end
        true
    end

    def my_flatten(array)
        result = []
        if array.is_a?(Array)

            array.each do |array|
                my_flatten(array)
            end
        else
            result << array
        end

        result
    end
end




