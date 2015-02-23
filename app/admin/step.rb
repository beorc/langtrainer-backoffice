ActiveAdmin.register Step do
  permit_params(
    :en_answers,
    :ru_answers,
    :en_questtion,
    :ru_question,
    :en_question,
    :ru_help,
    :en_help
  )

  show do
    attributes_table do
      row :id
      row :en_answers
      row :ru_answers
      row :ru_question
      row :ru_question_view do
        step.question(:ru).html_safe
      end
      row :ru_help
      row :ru_help_view do
        step.ru_help.html_safe
      end
      row :en_question
      row :en_question_view do
        step.question(:en).html_safe
      end
      row :en_help
      row :en_help_view do
        step.en_help.html_safe
      end
    end
    active_admin_comments
  end

  action_item :new, only: :show do
   link_to I18n.t('active_admin.new_model', model: active_admin_config.resource_label), new_resource_path
  end
end
