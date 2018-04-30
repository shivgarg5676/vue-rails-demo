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

class FaqSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :question, :answer, :seq_number
  belongs_to :course_page
end
