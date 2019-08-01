ma_list = [1, 2, 3]
IO.puts hd ma_list # 1
IO.puts Kernel.inspect tl ma_list # [2, 3]
IO.puts Kernel.inspect ma_list ++ [3, 4, 5, 6] # [1, 2, 3, 3, 4, 5, 6]
IO.puts Kernel.inspect ma_list -- [1, 1, 2, 4] # [4]