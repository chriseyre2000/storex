defmodule Storex.Sales.Cart do
  @moduledoc """
  This provides the sales cart schema
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "sales_carts" do
    has_many :line_items, Storex.Sales.LineItem
    timestamps()
  end

  @doc false
  def changeset(cart, attrs) do
    cart
    |> cast(attrs, [])
    |> validate_required([])
  end
end
