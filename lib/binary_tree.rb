class BinaryTree

  attr_accessor :left
  attr_accessor :right
  attr_accessor :ret
  attr_accessor :content

  def initialize(number)
  	@content = number
  end

  def insert(value)
    if value < @content
      
      if @left == nil
	puts "New Tree left"
        @left = BinaryTree.new(value)
      else
	puts "left inserT"
        @left.insert(value)
      end
    
    else

      if @right == nil
	puts "New tree right" 
        @right = BinaryTree.new(value)
      else
	puts "right insert"
        @right.insert(value)
      end
    end
  end

  def traverse
    ret = String.new

    if @left != nil
      ret += left.traverse
    end

    ret += @content.to_s
    ret += " "
        
    if @right != nil
      ret += right.traverse
    end

    return ret.to_s
  end
end
