defmodule Input do
  def get_testcase_count() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
  end

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

  def handle_testcase(0, _iterator) do
  end

  def handle_testcase(testcase, iterator) do
    input = IO.gets("")
    range_from = range_from(input)
    range_to = range_to(input)
    range = Enum.to_list(range_from..range_to)

    starter = range_to - range_from

    checked_number = Enum.at(range, starter)
    divisor = checked_number - 1

    Prime.number_selector(range, range, starter, divisor)
    |> Enum.each(&IO.inspect/1)

    IO.puts("")
    handle_testcase(testcase - 1, iterator + 1)
  end
end

defmodule Prime do
  def number_selector(_range, working_list, -1, _divisor) do
    working_list
  end

  def number_selector(range, working_list, starter, _divisor) do
    checked_number = Enum.at(range, starter)
    divisor = checked_number - 1
    new_list = number_verifier(range, working_list, checked_number, divisor)
    number_selector(range, new_list, starter - 1, divisor)
  end

  def number_verifier(_range, working_list, _checked_number, 0) do
    List.delete(working_list, 1)
  end

  def number_verifier(range, working_list, checked_number, divisor) do
    new_list =
      cond do
        divisor >= 2 and rem(checked_number, divisor) == 0 ->
          List.delete(working_list, checked_number)

        true ->
          working_list
      end

    number_verifier(range, new_list, checked_number, divisor - 1)
  end
end

testcase = Input.get_testcase_count()
Input.handle_testcase(testcase, 1)
