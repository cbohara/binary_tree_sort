class TreeNode
  def initialize(value = nil, left = nil, right = nil)
    @value = value
      @left = (left.is_a?(TreeNode) || left.nil?) ? left : raise("Bad Thing")
      @right = (right.is_a?(TreeNode) || right.nil?) ? right : raise("Bad Thing")
  end

  def set_value(value)
    @value = value
  end

  def set_left_pointer(node)
    @left = node if node.is_a?(TreeNode)
  end

  def set_right_pointer(node)
    @right = node if node.is_a?(TreeNode)
  end

  def get_value
    @value
  end

  def get_left_pointer
    @left
  end

  def get_right_pointer
    @right
  end

  def to_s
    return "#{@value}"
  end

  # breadth first traversal
  # iterative using queue
    def iterative_breadth_first(target) # If tree_node, then... else ...
      return self if @value == target
    queue = []
    queue << self
    while !queue.empty?
      front_node = queue.shift
      return front_node if front_node.get_value == target
        queue << left_child unless left_child.nil?
        queue << right_child unless right_child.nil?
    end
    return nil
  end

  # iterative depth first preorder search
  def iterative_depth_first(target)
    return self if self.get_value == target
    stack = []
    stack << self
    while !stack.empty?
      popped = stack.pop
      right_child = popped.get_right_pointer
      left_child = popped.get_left_pointer
      if !left_child.nil?
        stack << left_child
      end
      return popped if popped.get_value == target
      if !right_child.nil?
        stack << right_child
      end
    end
    return nil
  end

    #           A
    #       B       C
    #     D   E   F
    #   G            H
    # I

    stack = []
    popped stack.pop(-1) # Take last element
    if popped ! nil?

      def recursive_depth_first(target)
        match = @left.recursive_depth_first(target) unless @left.nil?
        return match unless match.nil?
        return self if @value == target
        return (@right.nil?) ? nil : @right.recursive_depth_first(target)
      end

    if self.get_value == target
      return self
    else
      if !self.get_left_pointer.nil?
        left_child = self.get_left_pointer
        p "LEFT"
        p left_child.get_value
        # why is this not returning?
        if left_child.get_value == target
          return left_child
        end
        left_child.recursive_depth_first(target)
      end
      if !self.get_right_pointer.nil?
        right_child = self.get_right_pointer
        p "RIGHT"
        p right_child.get_value
        # why is this not returning?
        if right_child.get_value == target
          return right_child
        end
        right_child.recursive_depth_first(target)
      end
    end
  end
end

root = generate_tree(25, 75, 40)
return nil if max = 0
ret = TreeNode.new(rand(100))
if (rand(100) < 75) then root.left_node = gen_tree(max -1, 75, 40)
    if (rand(100) < 40) then root.right_node = sdfsdf
        return ret

p "Start of stuff"
        newtree = generate(25, 75, 40, [5, 11, 343])
deep_node5 = TreeNode.new(5)
p deep_node5
node11 = TreeNode.new(11)
p node11
node4 = TreeNode.new(4)
node9 = TreeNode.new(9, node4)
node6 = TreeNode.new(6, deep_node5, node11)
node7 = TreeNode.new(7, nil, node6)
shallow_node5 = TreeNode.new(5, nil, node9)
root = TreeNode.new(2, node7, shallow_node5)

p "#{root} - #{root.get_left_pointer}, #{root.get_right_pointer}"
p root.iterative_breadth_first(11)
p root.iterative_depth_first(3)
p root.recursive_depth_first(11)
