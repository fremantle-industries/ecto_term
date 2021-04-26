defmodule EctoTerm do
  @behaviour Ecto.Type

  def type, do: :binary
  def cast(bin), do: {:ok, bin}
  def load(bin), do: {:ok, bin |> :erlang.binary_to_term()}
  def dump(bin), do: {:ok, bin |> :erlang.term_to_binary()}
  def embed_as(_), do: :dump
  def equal?(a, b), do: a == b
end
