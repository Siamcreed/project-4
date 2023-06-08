module ApplicationHelper
    def render_field(form, attribute, label_text)
        content_tag(:div, class: 'field') do
          form.label attribute, label_text +
            form.text_field(attribute)
        end
    end
end
