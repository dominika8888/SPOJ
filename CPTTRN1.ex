defmodule Chessboards do
  def get_board_count() do
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
  end

  def get_dimensions() do
    IO.gets("")
    |> String.trim()
  end

  def handle_input2(input) do
    split_string = String.split(input)
    characters_number = List.first(split_string)
    String.to_integer(characters_number)
  end

  def handle_input1(input) do
    split_string = String.split(input)
    rows_number = List.last(split_string)
    String.to_integer(rows_number)
  end

  def odd?(rows_number) do
    require Integer
    Integer.is_odd(rows_number) == true
  end

  def print_row(0, _rows_number) do
  end

  def print_row(_characters_in_row, 0) do
    IO.puts("")
  end

  def print_row(characters_in_row, rows_number) do
    output =
      "*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*."

    right_length_output =
      cond do
        odd?(rows_number) -> String.slice(output, 0, characters_in_row)
        true -> String.slice(output, 1, characters_in_row)
      end

    IO.puts(right_length_output)
    print_row(characters_in_row, rows_number - 1)
  end

  def handle_testcase(0, _iterator) do
  end

  def handle_testcase(arg_testcase, iterator) do
    dimensions = get_dimensions()
    split_dimensions1 = handle_input1(dimensions)
    split_dimensions2 = handle_input2(dimensions)
    print_row(split_dimensions1, split_dimensions2)
    handle_testcase(arg_testcase - 1, iterator + 1)
  end
end

testcase = Chessboards.get_board_count()
Chessboards.handle_testcase(testcase, 1)
