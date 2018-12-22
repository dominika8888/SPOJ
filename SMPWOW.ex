defmodule Wow do
  def validate(input) do
    cond do
      input >= 0 and input <= 50 -> Wow.print_wow(input)
      true -> "Invalid input. Input and integer from 0 to 50."
    end
  end

  def print_os(0) do
  end

  def print_os(input) do
    IO.write("o")
    print_os(input - 1)
  end

  def print_wow(input) do
    IO.write("W")
    print_os(input)
    IO.write("w\n")
  end
end

input =
  IO.gets("Input and integer from 0 to 50:")
  |> String.trim()
  |> String.to_integer()

Wow.validate(input)
