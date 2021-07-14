defmodule AppWeb.PostView do
  use AppWeb, :view
  alias AppWeb.PostView

  def render("index.json", %{blog_posts: blog_posts}) do
    %{data: render_many(blog_posts, PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      views: post.views,
      inserted_at: post.inserted_at,
      updated_at: post.updated_at
    }
  end
end
