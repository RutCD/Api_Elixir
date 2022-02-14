defmodule FirstApiWeb.PageController do
  use FirstApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
  def weather do
   request("https://api.openweathermap.org/data/2.5/weather?q=playa%20del%20carmen&APPID=d9d025affffb89c75f8653c84b044b40")
    |> body
    |> message
    |> result
  end

  def request(url) do
    HTTPotion.get url

  end

  def body(response) do
    response.body

  end


  def message(map) do
    "> #{map["name"]} tiene la visibilidad de #{map["visibility"]}"

  end


  def result(message)do
    IO.puts message

  end
  def show(conn, map) do
    message = "> #{map["name"]} tiene la visibilidad de #{map["visibility"]}"
    render(conn,"weather.html", message: message)
  end


end
