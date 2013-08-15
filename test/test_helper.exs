Dynamo.under_test(Impressdeck.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Impressdeck.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
