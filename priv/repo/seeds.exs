Cafelist.Repo.query("TRUNCATE cafes", [])

File.read!("priv/cafes.json")
|> Jaxon.decode!()
|> Map.get("hits")
|> Enum.each(fn cafe ->
  city =
    case cafe["city_id"] do
      1 -> "barcelona"
      2 -> "london"
    end

  cafe =
    %Cafelist.Cafe{
      image: cafe["logo"],
      images: [],
      name: cafe["name"],
      tags: [city]
    }

  Cafelist.Repo.insert!(cafe)
end)
