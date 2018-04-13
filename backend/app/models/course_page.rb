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

class CoursePage < ApplicationRecord
  
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :backend_key, presence: true, uniqueness: true
end
