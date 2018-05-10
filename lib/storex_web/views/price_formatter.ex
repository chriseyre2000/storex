defmodule StorexWeb.Helpers.PriceFormatter do
  
  @moduledoc """
  This provides currency formatting for the views that require it.
  """
  
  def format_price(%Decimal{} = price) do
    Number.Currency.number_to_currency(price, unit: "£")
  end  
end