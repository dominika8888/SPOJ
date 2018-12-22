defmodule Matematyka do
  def pomnoz(mnozna, mnoznik) do
    mnozna * mnoznik
  end

  def sumuj(składnik1, składnik2) do
    składnik1 + składnik2
  end

  def potrój(składnik1) do
    składnik1 * 3
  end





  def potrój(liczba, 0, wynik) do
    wynik
  end

  def potrój(liczba, iterator, wynik) do
    potrój(liczba, iterator - 1, wynik + liczba)
  end

  def wypisz(0) do
  end

  def wypisz(liczba_razy) do
    IO.puts("wypisałem")
    wypisz(liczba_razy - 1)
  end

  # # def mnozenie_dodawaniem(mnozna, mnoznik) do
  #   (mnozna + mnozna)
  # end
  # def mnozenie_dodawaniem(mnozna, mnoznik) do
end

Matematyka.wypisz(2)

liczba1 =
  IO.gets("podaj liczbe\n")
  |> String.trim()
  |> String.to_integer()

liczba2 =
  IO.gets("podaj druga liczbe\n")
  |> String.trim()
  |> String.to_integer()

Matematyka.pomnoz(liczba1, liczba2)
|> IO.inspect(label: "Wynik mnożenia")

Matematyka.sumuj(liczba1, liczba2)
|> IO.inspect(label: "Wynik dodawania")

# Matematyka.mnozenie_dodawaniem(liczba1, liczba2)
# |> IO.inspect(label: "Wynik mnożenia dodawaniem")

Matematyka.potrój(liczba1)
|> IO.inspect(label: "Potrojone")

Matematyka.potrój(liczba1, 3, 0)
|> IO.inspect(label: "Potrojone")
