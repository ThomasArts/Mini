defmodule ExamplesEqc do
  use ExUnit.Case
  use EQC.ExUnit

  property "Erlang Sequence" do
    forall {m, n} <- {int, int} do
       ensure :lists.seq(m, n) == Enum.to_list(m .. n)
    end
  end

end
