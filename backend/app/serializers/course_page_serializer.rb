class CoursePageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :id, :backend_key, :slug
  has_many :faqs
end
