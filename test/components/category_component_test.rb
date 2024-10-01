# frozen_string_literal: true
require "test_helper"
class CategoryComponentTest < ViewComponent::TestCase
  test "should render an empty category" do
    render_inline(CategoryComponent.new(category: nil))
    assert_equal(
      "<a class=\"category text-gray-600 px-4 py-2 rounded-2xl drop-shadow-sm hover:bg-gray-300 bg-gray-300\" href=\"/\">All</a>",
      rendered_component.strip
    )
  end
  test "should render a category" do
    render_inline(CategoryComponent.new(category: Category.new(id: 1014178784, name: "Moviles")))
    assert_equal(
      "<a class=\"category text-gray-600 px-4 py-2 rounded-2xl drop-shadow-sm hover:bg-gray-300 bg-white\" href=\"/?category_id=1014178784\">Moviles</a>".strip,
      rendered_component.strip
    )
  end
end
