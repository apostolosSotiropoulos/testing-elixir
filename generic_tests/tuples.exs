ma_tuple = {:first, "second", 3}
IO.puts Kernel.inspect elem ma_tuple, 0 # first
edited_tuple = put_elem ma_tuple, 1, "elephant"
IO.puts elem edited_tuple, 1 # elephant
IO.puts elem ma_tuple, 1 # second