ActiveAdmin.register Unit do
  permit_params :slug, :course_id, :published, :random_steps_order

  form do |f|
    f.inputs "Unit Details" do
      f.input :slug
      f.input :course, as: :select, collection: Course.all.map { |m| [m.slug, m.id] }
      f.input :published
      f.input :random_steps_order
    end
    f.actions
  end
end
