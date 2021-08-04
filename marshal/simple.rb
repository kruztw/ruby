class Person
    attr_accessor :name
end

p = Person.new
p.name = "kruztw"

serial = Marshal.dump(p)
q = Marshal.load(serial) 
puts q.name

p.name = "xavier"
puts q.name

    
    
    
    

    
    
    

    
