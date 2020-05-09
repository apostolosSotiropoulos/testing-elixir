defmodule StringUtils do
  def two_lettered_strings(string) do
    with_trailing_underscore = &(&1 ++ ["_"])
    list_of_pairs = &(Enum.chunk_every(&1, 2, 2, :discard))
    to_string = &(List.to_string/1)
    list_of_strings = &(Enum.map(&1, to_string))


    string 
    |> String.graphemes()
    |> with_trailing_underscore.()
    |> list_of_pairs.()
    |> list_of_strings.()
  end
end
