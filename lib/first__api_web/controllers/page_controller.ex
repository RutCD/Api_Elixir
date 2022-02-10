defmodule FirstApiWeb.PageController do
  use FirstApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def weather do
   request("https://api.openweathermap.org/data/2.5/weather?q=playa%20del%20carmen&APPID=d9d025affffb89c75f8653c84b044b40")

  end

  def request(url) do
    HTTPoison.get url

  end

  def body(response) do
    response.body

  end




  def show(conn, _params) do
    playa = %{name: "city"}
    render(conn, "playa.html", playa: playa)
  end








end
