class EquilibriumIndex
  def find_equilibrium_index(array)
    index = array.length-1
    len   = array.length-1
    while index > 0
      left  = array[0..index-1].inject(:+)
      right = array[index+1..len].inject(:+)
      if left == right
        return index
      end
      index -= 1
    end
    nil
  end
end
