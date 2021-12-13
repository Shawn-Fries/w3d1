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

    # def my_select(&block)
    #     i = 0
    #     result = []
    #     while i < self.length
    #         result << self[i] if block.call(self[i])
    #         i += 1
    #     end
    #     result 
    # end

end




