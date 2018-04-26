class FaqSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :question, :answer, :seq_number
  belongs_to :course_page
end
