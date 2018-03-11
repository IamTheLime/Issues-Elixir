defmodule Platform.Accounts.Player do
  use Ecto.Schema
  import Ecto.Changeset


  schema "players" do
    field :display_name, :string
    field :password, :string, virtual: true
    field :password_digest, :string
    field :score, :integer, default: 0
    field :username, :string, unique: true

    timestamps()
  end

  @doc false
  def registration_changeset(player, attrs) do
    player
    |> cast(attrs,:score, :username])
    |> validate_required([:username])
    |> unique_constraint(:username)
    |> validate_length(:username, min: 2,max: 100)
    |> validate_length(:password, min: 6,max: 100)
    |> put_pass_digest()

  end
  
end
