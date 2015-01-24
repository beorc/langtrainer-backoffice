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
end
