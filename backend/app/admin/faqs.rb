ActiveAdmin.register Faq do
  belongs_to :course_page
  navigation_menu :course_page
  sidebar :versionate, :partial => "layouts/version", :only => :show

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
  show do 
    attributes_table do
      row :question 
      row :answer do |faq|
        raw(faq.answer)
      end
      row :sequence_number
      row :created_at
      row :modified_at
      row :course_page
    end
  end
  
  member_action :history do
    @faq = Faq.find(params[:id])
    @versions = PaperTrail::Version.where(item_type: 'Faq', item_id: @faq.id)
    render "layouts/history"
  end


  controller do
    def permitted_params
      params.permit!
    end
    def show
      @faq = Faq.includes(versions: :item).find(params[:id])
      @versions = @faq.versions 
      @faq = @faq.versions[params[:version].to_i].reify if params[:version]
      show! #it seems to need this
     end
  end

end
