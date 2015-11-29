defmodule ReverseEqc do
  use ExUnit.Case
  use EQC.ExUnit

  property "Reversing a list" do
    forall l <- list(int) do
        ensure Enum.reverse(Enum.reverse(l)) == l
    end
  end
  
end
