# frozen_string_literal: true

require_relative 'payment'
# Functions for work with data list
class List
  def initialize
    @array = []
  end

  def add(element)
    @array.push(element)
  end

  

  def delete(index)
    @array.delete_at(index.to_i)
  end

  def one_pay(index)
    @array[index.to_i]
  end

  def size
    @array.size
  end

  def index(element)
    @array.index(element)
  end

  def each
    @array.each { |element| yield(element) }
  end

  def each_with_index
    @array.each_with_index { |element, index| yield(element, index) }
  end

  def empty
    return true if @array.empty?
  end
end
