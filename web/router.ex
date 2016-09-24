defmodule Freezerburn.Router do
  use Freezerburn.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Freezerburn do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/items", ItemController
  end

  scope "/api", Freezerburn, as: :api do
    pipe_through :api
    resources "/items", Api.ItemController
  end
end
