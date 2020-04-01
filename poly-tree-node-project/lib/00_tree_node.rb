class PolyTreeNode

    attr_reader :value, :parent
    attr_accessor :children
    
    def initialize(value=nil)
        @value, @parent, @children = value, nil, []
    end

    def parent=(node)
        unless @parent ==  nil
            @parent.children.delete(self)
        end
        @parent = node
        unless @parent == nil || @parent.children.include?(self)
            @parent.children << self
        end
    end

    def add_child(child)
        child.parent=(self)
    end

    def remove_child(child)
        if self.children.include?(child)
            child.parent=(nil)
        else
            raise error
        end
    end

    def dfs(value)
        return self if self.value == value
        return nil if self.children.length == 0
        self.children.each do |child|
            result = child.dfs(value)
            return result if result != nil
        end
        nil
    end 

    def bfs(value)
        queue = []
        queue << self
        until queue == []
            test_node = queue.shift
            return test_node if test_node.value == value
            test_node.children.each { |child| queue << child }
        end
        nil
    end

end