defmodule Gsx do
  @moduledoc """
  Documentation for `Gsx`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Gsx.hello()
      :world

  """

  def search_repo do
    GitHub.get!("/repositories?q=stars:>=500+language:php").body
  end

  def search_code do
    GitHub.get!("/search/code?q=md5(+stars:>=500+fork:true+language:php").body
  end
end
