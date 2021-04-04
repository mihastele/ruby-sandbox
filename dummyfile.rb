
class Dummy
  attr_accessor(:hello, :hello2)
  @hello
  @hello2

  def to_s
    return "#{@hello} and #{@hello2} to U!!!!"
  end
end


def outer_function(dummy)
  if dummy.class == Dummy
    puts "It's a Dummy!"
  else
    puts "Not a Dummy!"
  end
end

dummyClass = Dummy.new()

dummyClass.hello = "Hellooo"
dummyClass.hello2 = "HEEEEEEEEEEELOOOOOOOOOOOOOOOOOOOOOO"


puts dummyClass

outer_function(dummyClass)
outer_function("hello")