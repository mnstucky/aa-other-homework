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

class Map

    def initialize
        @map =  Array.new() { Array.new() }
    end

    def set(key, value)
        unless @map.any? { |pair| pair[0] == key }
            @map << [key, value]
        end
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair[0] == key }
    end

    def delete(key)
        if @map.any? { |pair| pair[0] == key }
            target = 0
            @map.each.with_index { |pair, idx| target = idx if pair[0] == key }
            @map.delete_at(target)
        end
    end

    def show
        p @map
    end

end

#code for testing
m = Map.new
m.set(1, 2)
m.set(2, 3)
m.set(1, 3)
m.show
p m.get(1)
m.delete(1)
m.show