defmodule FirstApiWeb.PageController do
  use FirstApiWeb, :controller

  def index(conn, _params) do
    render(conn, "playa.html")
  end
  def weather do
   request("https://api.openweathermap.org/data/2.5/weather?q=playa%20del%20carmen&APPID=d9d025affffb89c75f8653c84b044b40")

  end

  def request(url) do
    HTTPotion.get url

  end

  def body(response) do
    response.body

  end

  def create(map) do
    "> #{map["name"]} tiene una visibilidad de #{map["visibility"]}"
  end

  def show(message) do
   message
  end


end
