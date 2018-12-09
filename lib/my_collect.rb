def my_collect array
  if block_given?

    i = 0
    map_simulator = []

    while i < array.length
      map_simulator.push(yield(array[i]))
      i+=1
    end

    map_simulator
  else
    print "Gimme a block!"
  end

end


### TEST ###
# my_collect([1,2,3,4,5,"Six"]) do |e|
#   e
# end
