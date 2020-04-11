defmodule GitHub do
  use HTTPoison.Base

  def process_request_url(url) do
    "https://api.github.com" <> url
  end

  def process_request_headers(headers) do
    # Allways send Accept header acording to Github API docs.
    Enum.into(headers, [Accept: "application/vnd.github.v3+json"])
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    # |> Enum.map(fn({k, v}) -> {String.to_atom(k), v} end)
  end
end
