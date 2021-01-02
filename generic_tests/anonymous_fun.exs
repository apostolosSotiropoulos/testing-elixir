# anonymous functions

add = fn a,b -> a + b end
add_one = fn n -> add.(1, n) end
IO.puts add_one.(3)

incremented_by = fn x ->
  fn y -> x + y end
end
incrented_by_2 = incremented_by.(2)

IO.puts incrented_by_2.(3)
IO.puts incremented_by.(3).(4)
