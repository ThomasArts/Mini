defmodule StringEqc do
  use ExUnit.Case
  use EQC.ExUnit
  
  property "Reverse strings" do
    forall string <- utf8 do
      ensure String.reverse(String.reverse(string)) == string
    end
  end

end
