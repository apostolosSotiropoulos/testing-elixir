defmodule TestPipe do
  def pipe_passes_to_1st_arg_by_default do
    "first_arg"
    |> joined_args("second_arg") # will return "first_arg then second_arg"
  end

  def pipe_passes_to_custom_arg do
    "second_arg"
    |> (&joined_args("first_arg", &1)).()
  end

  def joined_args(first, second) do
    first <> " then " <> second
  end
end

IO.puts TestPipe.pipe_passes_to_1st_arg_by_default
IO.puts TestPipe.pipe_passes_to_custom_arg
