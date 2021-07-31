require 'minitest/autorun'
require './lib/person'

class PersonTest < Minitest::Test
  def setup
    @minerva = Person.new('Minerva', 1000)
    @luna = Person.new('Luna', 500)
  end

  def test_it_exists
    assert_instance_of Person, @minerva
    assert_instance_of Person, @luna
  end
end
