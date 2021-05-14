defmodule Identicon do
  def create do
    unique_list_of_random_symetric_sublists(number_of_sublists: 5)
  end

  # defp unique_list_of_random_symetric_sublists(number_of_sublists: 0, unique_list: list) when generated_before?(list) do
  #   unique_list_of_random_symetric_sublists(number_of_sublists: Enum.count(list))
  # end

  defp unique_list_of_random_symetric_sublists(number_of_sublists: 0, unique_list: list) do
    list
  end

  defp unique_list_of_random_symetric_sublists(number_of_sublists: number) do
    unique_list_of_random_symetric_sublists(number_of_sublists: number - 1, unique_list: [random_symmetric_list])
  end

  defp unique_list_of_random_symetric_sublists(number_of_sublists: number, unique_list: list) do
    unique_list_of_random_symetric_sublists(number_of_sublists: number - 1, unique_list: list ++ [random_symmetric_list])
  end

  defp random_symmetric_list do
    random1 = Enum.random(0..9)
    random2 = Enum.random(0..9)
    random3 = Enum.random(0..9)
    [random1, random2, random3, random2, random1]
  end
end
