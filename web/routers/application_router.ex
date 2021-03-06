defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo in many
  # routers forwarding the requests between them
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to ImpressDeck!")
    render conn, "index.html"
  end
  
  get "/demo" do
    conn = conn.assign(:title, "impress.js demo")
    render conn, "impress-demo.html"
  end
  
  get "/node-demo" do
    conn = conn.assign(:title, "node.js demo")
    render conn, "node-demo.html"
  end
end
