# == Schema Information
#
# Table name: course_pages
#
#  id          :integer          not null, primary key
#  name        :string
#  slug        :string
#  backend_key :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CoursePageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
