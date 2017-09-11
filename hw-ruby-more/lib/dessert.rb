class Dessert
    
  # Attributes
  attr_accessor :name, :calories
  
  # Constructor
  def initialize(name, calories)
    @name = name
    @calories = calories 
  end
  
  # Healthy iff calories < 200
  def healthy?
   if @calories < 200 
     return true
   else
      return false
   end
  end
  
  # All desserts are delicious
  def delicious?
    return true
  end

end

# Inherit from class Dessert (to get the calories and name fields)
class JellyBean < Dessert
  
  # Attributes
  attr_accessor :flavor
  
  # Constructor (uses fields from Dessert)
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = " #{flavor} jelly bean"
  end
  
  # Licorice is not delicous - non-licorice is delicous
  def delicious?
    if @flavor== "licorice"
     return false
    else
     return true
    end
  end
end
