# assuming this file lives in ./lib if I compile it with
# elixirc -o ebin lib/*
# and then 
# cd ebin ; iex
# module will be directly accessible
defmodule Algebraic do
  def zero?(0), do: true
  def zero?(_), do: false # if I move this 1 line up, I get warned by the compiler that the other clause will never match
end
