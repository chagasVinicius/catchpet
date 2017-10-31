defmodule Catchpet.UserView do
  use Catchpet.Web, :view
  alias Catchpet.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
