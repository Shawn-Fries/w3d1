class Array
    def my_each(&block)
        i = 0
        result = []
        while i < self.length
            result << block.call(self[i])
            i += 1
        end
        result
    end
end