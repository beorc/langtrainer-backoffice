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
      f.input :step, as: :select, collection: Step.all.order('id DESC').map { |m| [m.to_s, m.id] }, selected: Step.last.id
      f.input :unit, as: :select, collection: Unit.all.order('id DESC').map { |m| [m.to_s, m.id] }, selected: Unit.last.id
      f.input :position
      f.input :from_en
      f.input :to_en
      f.input :from_ru
      f.input :to_ru
    end
    f.actions
  end

  index do
    selectable_column
    column :step
    column :unit
    column :position
    column :from_en
    column :to_en
    column :from_ru
    column :to_ru
    actions
  end

  action_item :new, only: :show do
   link_to I18n.t('active_admin.new_model', model: active_admin_config.resource_label), new_resource_path
  end
end
