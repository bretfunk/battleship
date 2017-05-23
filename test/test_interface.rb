require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/interface'

class InterfaceTest < Minitest::Test
  def test_class_exists
    test = Interface.new
    result = test.nil?
    assert_equal false, result
  end


end
