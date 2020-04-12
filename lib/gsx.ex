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

  # https://help.github.com/en/github/searching-for-information-on-github/searching-for-repositories
  def search_repo do
    GitHub.get!("/search/repositories?q=stars:>=500+language:php").body
  end

  # https://help.github.com/en/github/searching-for-information-on-github/searching-code
  def search_code do
    GitHub.get!("/search/code?q=md5(+stars:>=500+fork:true+language:php").body
  end
end
