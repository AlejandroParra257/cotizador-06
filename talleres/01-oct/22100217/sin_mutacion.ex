defmodule SinMutacion do
  @moduledoc """
  Las cinco funciones del taller, sin mutación.
  Un embarque es un mapa:
    %{id: "E1", peso_kg: 120, distancia_km: 650, tipo: "seco"}
  """

  # 1 · el acumulador ya no "cambia": cada vuelta devuelve uno nuevo
  def total_pesos(embarques) do
    Enum.reduce(embarques, 0, fn e, total -> total + e.peso_kg end)
  end

  # 2 · no toca los mapas recibidos: crea copias con :urgente
  def marcar_urgentes(embarques) do
    Enum.map(embarques, fn e -> Map.put(e, :urgente, e.distancia_km > 500) end)
  end

  # 3 · lista nueva; la original sigue igual
  #     Integer.floor_div reproduce Math.floor exacto con enteros
  def aplicar_descuento(precios, pct) do
    Enum.map(precios, fn p -> p - Integer.floor_div(p * pct + 50, 100) end)
  end

  # 4 · el "contador" es el acumulador del reduce
  def contar_por_tipo(embarques) do
    Enum.reduce(embarques, %{}, fn e, conteo ->
      Map.update(conteo, e.tipo, 1, fn n -> n + 1 end)
    end)
  end

  # 5 · las dos estructuras viajan juntas en una tupla
  def sin_duplicados(ids) do
    {_vistos, resultado} =
      Enum.reduce(ids, {MapSet.new(), []}, fn id, {vistos, resultado} ->
        if MapSet.member?(vistos, id) do
          {vistos, resultado}
        else
          {MapSet.put(vistos, id), [id | resultado]}
        end
      end)

    Enum.reverse(resultado)
  end
end