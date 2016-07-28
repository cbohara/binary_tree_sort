class TreeNode
  def initialize(value = nil, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
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

  # inserting a value into the existing tree itself.
  #  value -> number  tree.insert(14)
  #       7
  #      / \
  #     4   9
  #    /   /
  #   1   6
  #
  #

  #    14
  #   / \
  #  nil nil
  def insert_value(value)
    is_left = value < get_value()
    side = nil

    if is_left
      side = get_left_pointer()
    else
      side = get_right_pointer()
    end

    # side = value < get_value() ? get_left_pointer : get_right_pointer()

    if side.nil?
      newTree = TreeNode.new(value, nil, nil)

      # end of the line
      if is_left
        set_left_pointer(something)
      else
        set_right_pointer(newTree)
      end

      # value < get_value() ? set_left_pointer(newTree) : set_right_pointer(newTree)
    else
      side.insert_value(value)
    end

  end



end


def insert
  side = value < get_value() ? get_left_pointer : get_right_pointer()
  if side.nil?
      newTree = TreeNode.new(value, nil, nil)
      value < get_value() ? set_left_pointer(newTree) : set_right_pointer(newTree)
  else
      side.insert_value(value)
  end
end

array = [7, 4, 9, 1, 6, 14, 10]
first = array.shift
root = TreeNode.new(first, nil, nil)



root = array[0]
tree = BinaryTree.new(root)
array.each {|x| tree.insert_node(x)}
