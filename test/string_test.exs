defmodule StringTest do
  use ExUnit.Case
  
  test "Reverse strings 1" do
    string = <<204,128,32>>
    assert String.valid?(string)
    assert String.valid?(String.reverse(string))
    assert String.reverse(String.reverse(string)) == string
  end

  test "Reverse strings 2" do
    string = "\x{07eb} "
    assert String.valid?(string)
    assert String.valid?(String.reverse(string))
    assert String.reverse(String.reverse(string)) == string
  end

end
