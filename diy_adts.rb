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
# s = Stack.new
# p s.stack
# s.push(1)
# s.push(2)
# s.push(3)
# p s.stack
# p s.peek
# s.pop
# p s.stack

class Queue

    attr_reader :queue
    
    def initialize
        @queue = []
    end

    def enqueue(el)
        # adds an element to the queue
        @queue << el
    end

    def dequeue
        # removes one element from the queue
        @queue.delete_at(0)
    end

    def peek
        @queue[0]
    end

end

#code for testing
# q = Queue.new
# q.enqueue(1)
# q.enqueue(2)
# q.enqueue(3)
# p q.queue
# p q.peek
# q.dequeue
# p q.queue
# q.dequeue
# p q.queue


