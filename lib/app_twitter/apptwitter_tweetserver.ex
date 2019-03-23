defmodule AppTwitter.TweetServer do
    use GenServer

    def init(args) do
        {:ok, args}
    end

    def start_link(default) do    
        GenServer.start_link(__MODULE__, default, name: :tweet_server)
    end

    def handle_cast({:tweet, mensagem}, _) do
        AppTwitter.Tweet.send(mensagem)
    end

    def tweet(mensagem) do
        GenServer.cast(:tweet_server, {:tweet, mensagem})
    end
end