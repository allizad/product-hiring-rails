require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "people can have children" do
    john = Person.create(name: "John")
    jim = Person.create(name: "Jim", parent: john)
    bob = Person.create(name: "Bob", parent: john)

    assert_equal ["Jim", "Bob"], john.children.map(&:name)
  end

  test "people can have grandchildren" do
    sally = Person.create(name: "Sally")
    sue = Person.create(name: "Sue", parent: sally)
    kate = Person.create(name: "Kate", parent: sally)
    lisa = Person.create(name: "Lisa", parent: sue)
    robin = Person.create(name: "Robin", parent: kate)
    donna = Person.create(name: "Donna", parent: kate)

    assert_equal ["Lisa", "Robin", "Donna"], sally.grandchildren.map(&:name)
  end
end
