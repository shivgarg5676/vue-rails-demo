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
#  price       :integer
#  block_price :integer
#

class CoursePageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :backend_key, :slug
  has_many :faqs
end
