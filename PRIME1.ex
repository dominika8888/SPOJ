defmodule Prime do
  def range_from(input) do
    String.trim(input)
    |> String.split()
    |> List.first()
    |> String.to_integer()
  end

  def range_to(input) do
    String.trim(input)
    |> String.split()
    |> List.last()
    |> String.to_integer()
  end

  def range(range_from, range_to) do
  # IO.inspect(range_from)
  # IO.inspect(range_to)
    Enum.to_list(range_from..range_to)
    |> IO.inspect()
  end

  # def list_primes(list, 0) do
  #   List.pop_at(list, 0)
  #   |> IO.inspect()
  # end

  def list_primes(range, divisors) do
    iterator = -1
    inspected_number = List.pop_at(list, iterator + 1)
    divisor =
    unless inspected_number >= divisor do
    cond do
     mod(inspected_number, divisor) == 0 -> List.delete(list, inspected_number)
     true ->
    # |> IO.inspect()

end
end
end


    list_primes(list, iterator - 1)
  end
end

input = IO.gets("Give a range:")

range_from = Prime.range_from(input)

range_to = Prime.range_to(input)

range = Prime.range(range_from, range_to)

# iterator = range_to - range_from

Prime.list_primes(range, divisor)

divisor = Enum.to_list[2..range_to]
