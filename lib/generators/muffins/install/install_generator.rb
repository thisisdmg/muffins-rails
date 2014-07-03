require 'rails/generators'

module Muffins
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.join(__dir__, 'templates')
      desc 'This generator installs Muffins to the Asset Pipeline'

      def add_import_statement
        css_manifest =  'app/assets/stylesheets/application.css'
        scss_manifest = 'app/assets/stylesheets/application.css.scss'
        import_statement = "\n@import 'muffins/_style.scss';"

        if File.exist?(scss_manifest)
          append_to_file scss_manifest, import_statement, after: /\z/
        elsif File.exists?(css_manifest)
          warn "Warning:\n\nIn order to use Muffins you need to rename your app/assets/stylesheets/application.css file to application.css.scss. Adding @import statement to the .css version anyway, which might result in an error."
          append_to_file css_manifest, import_statement, after: /\z/
        else
          warn "Warning:\n\nCouldn't find app/assets/stylesheets/application.css or app/assets/stylesheets/application.scss. Creating the .scss version."
          copy_file 'application.css.scss', 'app/assets/stylesheets/application.css.scss'
        end
      end
    end
  end
end
