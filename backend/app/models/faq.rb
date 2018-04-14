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

class Faq < ApplicationRecord
  validates :question, presence: true
  validates :answer, presence: true
  belongs_to :course_page
end
