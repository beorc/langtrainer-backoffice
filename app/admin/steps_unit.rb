ActiveAdmin.register StepsUnit do
  permit_params(
    :step_id,
    :unit_id,
    :position,
    :from_en,
    :to_en,
    :from_ru,
    :to_ru
  )

  form do |f|
    f.inputs "Unit Details" do
      f.input :step, as: :select, collection: Step.all.map { |m| [m.title, m.id] }
      f.input :unit, as: :select, collection: Unit.all.map { |m| [m.slug, m.id] }
      f.input :position
      f.input :from_en
      f.input :to_en
      f.input :from_ru
      f.input :to_ru
    end
    f.actions
  end

  action_item :new, only: :show do
   link_to I18n.t('active_admin.new_model', model: active_admin_config.resource_label), new_resource_path
  end
end
