defmodule Card do

  def getCardLabel(value) do
    labels = %{11 => "J", 12 => "Q", 13 => "K", 14 => "A"}
    labels[value] || value
  end

  def getRandom do
    random_number = :rand.uniform(14)
    %{:label => getCardLabel(random_number), :value => random_number}
    end
end
