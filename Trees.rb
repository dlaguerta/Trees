# Trees.rb

# Use the Treenode class and manually setup a 5-node tree with your favorite TV Characters.
#  Then do inorder, preorder and postorder traversal

class Tree_Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def inorder() #need a base case in recursion(aka conditional statement)
    left.inorder() if left != nil
    puts value
    right.inorder() if right != nil
  end

  def postorder()
    left.postorder if left != nil
    right.postorder if right != nil
    puts value
    # Code Goes here
  end
  def preorder()
    puts value
    left.preorder if left != nil
    right.preorder if right != nil
    # Code Goes here
  end
end

# Create 5 tree_nodes and link them up
# draw the resulting tree

root = Tree_Node.new("Louise")
root.left = Tree_Node.new("Gene")
root.right = Tree_Node.new("Teddy")
root.left.left = Tree_Node.new("Bob")
root.left.right = Tree_Node.new("Linda")
root.right.left = Tree_Node.new("Mort")
root.right.left.left = Tree_Node.new("Mr.Fishoeder")
root.right.right = Tree_Node.new("Tina")


puts "Bob is to the left and to the left of Louise: #{"Bob" == root.left.left.value}"
# Create a set of Binary Expression Trees
puts "This is the list using an inorder method"
root.inorder()

puts "Using postorder method, shows the leaves first, then last is the root"
root.postorder()

puts "Using preorder method, shows the parents first, then the leaves"
root.preorder()
