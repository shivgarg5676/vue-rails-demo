# == Schema Information
#
# Table name: faqs
#
#  id             :integer          not null, primary key
#  question       :string
#  answer         :text
#  course_page_id :integer
#  seq_number     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
