require 'minitest/autorun'
require "./person"

class PersonTest < Minitest::Test
  def setup
    @minerva = Person.new
  end

  def test_it_exists
    assert_instance_of Person, @minerva
  end
end
