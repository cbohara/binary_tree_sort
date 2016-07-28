class TreeNode
  def initialize(value = nil, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def set_value(value)
    @value = value
  end

  def set_left(node)
    @left = node if node.is_a?(TreeNode)
  end

  def set_right(node)
    @right = node if node.is_a?(TreeNode)
  end

  def insert_node(value)
    side = value < @value ? @left : @right
    if side.nil?
      new_node = TreeNode.new(value, nil, nil)
      value < @value ? set_left(new_node) : set_right(new_node)
    else
      side.insert_node(value)
    end
  end

  def traverse
    sorted = []
    sorted += @left.traverse unless @left.nil?
    p sorted
    sorted.push(@value)
    sorted += @right.traverse unless @right.nil?
    p sorted
    return sorted
  end
end

array = [7, 4, 9, 1, 6, 14, 10]
first = array.shift
root = TreeNode.new(first, nil, nil)
array.each {|x| root.insert_node(x)}
p root.traverse
