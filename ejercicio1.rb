class Anything
    def foo
      a = 5
    end
  
    def bar
      @a += 1
    end
  end
  
  any = Anything.new
  any.foo
  any.bar
  any.a