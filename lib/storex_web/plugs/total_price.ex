defmodule StorexWeb.Plugs.TotalPrice do
    @moduledoc """
    This Plug exposes the total price to the pipeline.
    """
    import Plug.Conn
    alias Storex.Sales
    alias StorexWeb.Plugs

    @assign_name :total_price

    def init(opts) do
        opts
    end

    def call(conn, _opts) do
        cart = Plugs.Cart.get(conn)
        line_items = Sales.list_line_items(cart)
        assign(conn, @assign_name, Sales.line_items_total_price(line_items))
    end

    def get(conn) do
        conn.assigns[@assign_name]
    end
end