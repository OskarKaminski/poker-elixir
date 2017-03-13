defmodule CardTest do
    use ExUnit.Case
    doctest Card

    test "getRandom should return a map with label" do
        card = Card.getRandom()
        assert card[:label]
    end

    test "getRandom should return a map with value" do
        card = Card.getRandom()
        assert card[:value]
    end

    test "getCardLabel should return 10 for input 10" do
        assert Card.getCardLabel(10) == 10
    end

    test "getCardLabel should return 'K' for input 13" do
        assert Card.getCardLabel(13) == "K"
    end
end