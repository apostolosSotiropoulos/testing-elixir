defmodule StringUtils do
  def two_lettered_strings(string) do
    string
    |> to_char_list()
    |> Enum.chunk_every(2, 2, '_')
    |> Enum.map(&to_string/1)
  end
end
