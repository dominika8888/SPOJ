defmodule TheAnswer do
  def answer(42) do
  end

  def answer(number) do
    IO.inspect(number)
    IO.gets("")
    |> String.trim()
    |> String.to_integer()
    |> answer()
  end
end

IO.gets("")
|> String.trim()
|> String.to_integer()
|> TheAnswer.answer()
