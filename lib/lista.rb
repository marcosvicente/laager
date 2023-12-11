class Lista
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def append(value)
    if self.head
      find_tail.nextNode = Node.new(value, nil)
    else
      self.head = Node.new(value, nil)
    end
  end

  def find_tail
    node = self.head
    return node if !node.nextNode
    return node if !node.nextNode while (node = node.nextNode)
  end

  def append_after(target, value)
    node = find(target)
    return unless node
    lastNode  = node.nextNode
    node.nextNode = Node.new(value, nil)
    node.nextNode.nextNode = lastNode
  end

  def find(value)
    node = self.head
    return false if !node.nextNode
    return node  if node.value == value
    while (node = node.nextNode)
      return node if node.value == value
    end
  end

  def delete(value)
    if self.head.value == value
      self.head = self.head.nextNode
      return
    end
    node = find_before(value)
    node.nextNode = node.nextNode.nextNode
  end

  def find_before(value)
    node = self.head
    return false if !node.nextNode
    return node  if node.nextNode.value == value
    while (node = node.nextNode)
      return node if node.nextNode && node.nextNode.value == value
    end
  end

  def print(list=nil)
    return nil if list.nil?
    node = list.head
    puts node.value
    while (node = node.nextNode)
      puts node.value
    end
  end

  def inverteLista(list)
    return nil if list.nil?
    prev = nil
    node = list.head

    while(node != nil)
      temp = node.nextNode
      node.nextNode = prev
      prev = node
      node = temp
    end
    list.head = prev
    list
  end
  
  private

  class Node
    attr_accessor :value, :nextNode

    def initialize(value, nextNode)
      self.value = value
      self.nextNode = nextNode
    end
  end
end


