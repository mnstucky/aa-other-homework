class Stack

    attr_reader :stack
    
    def initialize
        @stack = []
    end

    def push(el)
        # adds an element to the stack
        @stack << el
    end

    def pop
        # removes one element from the stack
        @stack.delete_at(-1)
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @stack[-1]
    end

end

#code for testing 
s = Stack.new
p s.stack
s.push(1)
s.push(2)
s.push(3)
p s.stack
p s.peek
s.pop
p s.stack
