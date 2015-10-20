World(Module.new do
  def browser
    $browser ||= begin
      PageMagic.session(browser: :chrome).tap do |session|
        session.define_page_mappings '/login' => LoginPage,
                                     '/bill' => BillPage

        root = case environment
                 when :development
                   'http://localhost'
                 else
                   'http://localhost:9292'
               end

        session.visit(url: root)
      end
    end
  end
end)