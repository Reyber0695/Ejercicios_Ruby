class User
  attr_accessor :name, :last_name
  
  def initialize(name, last_name)
    @name = name
    @last_name = last_name
  end
  
  def full_name
    "#{@name} #{@last_name}"
  end
end
  
user = User.new("Reyber", "Santos")
user.full_name