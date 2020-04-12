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

  # tmp usage:
  # iex> Gsx.search_repo["items"]
  # iex> |> Enum.map(fn(item) -> "#{item["owner"]["login"]}/#{item["name"]}" end)
  # iex> |> Enum.map(fn(repo) -> Gsx.search_code(repo) end)


  # https://help.github.com/en/github/searching-for-information-on-github/searching-for-repositories
  def search_repo do
    GitHub.get!("/search/repositories?q=stars:>=500+language:php").body
  end

  # https://help.github.com/en/github/searching-for-information-on-github/searching-code
  def search_code(repo_name) do
    result =
      ("/search/code?q=md5(+stars:>=500+fork:true+language:php" <> "+repo:#{repo_name}")
      |> GitHub.get!()

    IO.puts("/search/code?q=md5(+stars:>=500+fork:true+language:php" <> "+repo:#{repo_name}")
    result.body
  end
end
