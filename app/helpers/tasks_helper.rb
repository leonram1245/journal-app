module TasksHelper
    def errors_for(task)
        if task.errors.any?
            content_tag(:div, class: "card border-danger") do
                concat(content_tag(:div, class: "card-header bg-danger text-white") do
                    concat "#{pluralize(task.errors.count, "error")} prohibited this #{task.class.name.downcase} from being saved:"
                end)
                concat(content_tag(:ul, class: 'mb-0 list-group list-group-flush') do
                    task.errors.full_messages.each do |msg|
                        concat content_tag(:li, msg, class: 'list-group-item')
                    end
                end)
            end
        end
    end
end
