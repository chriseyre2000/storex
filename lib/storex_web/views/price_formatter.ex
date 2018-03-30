defmodule StorexWeb.Helpers.PriceFormatter do
  def format_price(%Decimal{} = price) do
    Number.Currency.number_to_currency(price, unit: "£")
  end  
end