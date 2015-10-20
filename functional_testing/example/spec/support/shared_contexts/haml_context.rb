shared_context :haml_templates do

  def templates_dir
    "#{__dir__}/../../../views/"
  end

  def render locals={}
    result = Haml::Engine.new(File.read("#{templates_dir}/#{self.class.top_level_description}")).render(self,locals)
    PageMagic::Session.new(Capybara::Node::Simple.new(result))
  end
end