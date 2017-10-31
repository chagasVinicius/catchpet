defmodule Catchpet.UserController do
  use Catchpet.Web, :controller
  alias Catchpet.User

  def index(conn, _params) do
    users = Repo.all(Catchpet.User)
    render conn, "index.html", users: users
  end

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
