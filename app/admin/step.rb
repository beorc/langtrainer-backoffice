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

  action_item :new, only: :show do
   link_to I18n.t('active_admin.new_model', model: active_admin_config.resource_label), new_resource_path
  end
end
