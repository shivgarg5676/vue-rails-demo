ActiveAdmin.register Faq do
  belongs_to :course_page
  navigation_menu :course_page
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs do
    f.input :question
    f.input :answer, :as => :ckeditor
    f.input :seq_number
    f.input :course_page,  :collection => [f.object.course_page], :include_blank => false
  end
  f.actions
end

  controller do
    def permitted_params
      params.permit!
    end
  end

end
