TEN_DOLLAR_NOTE = 10

def withdraw(amount)
  if amount <= 0 # this deals with some of the situations...
    return false
  end

  if (amount % TEN_DOLLAR_NOTE == 0)
    notes=[]
    number_of_ten_dollar_notes = amount / TEN_DOLLAR_NOTE
    number_of_ten_dollar_notes.times {notes<<TEN_DOLLAR_NOTE}
    return notes
  end

  return false
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.

describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [45, false],
    [20, [10, 10]],
    [40, [10, 10, 10, 10]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end