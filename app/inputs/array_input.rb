class ArrayInput < SimpleForm::Inputs::StringInput
  def input
    input_html_options.merge!({name: "#{self.object_name}[#{attribute_name}][]"})
    @builder.text_field(attribute_name, input_html_options)
  end
end
