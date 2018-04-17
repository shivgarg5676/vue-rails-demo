class FaqSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :question, :answer, :course_page_id, :seq_number
end
