defmodule AppTwitter.FileReader do
    def ler_texto_arquivo(caminho) do
        File.read!(caminho)
        |> String.split("\n")
        |> Enum.map(&String.trim/1)
    end
end