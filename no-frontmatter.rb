# here be dragons - but on the plus side, allows you to use Jekyll to render markdown
# in files you want to send to GitHub but you're not sure is ready for publication yett

module Jekyll
  module Utils
    def has_yaml_header?(file)
      # falsify the presence of the yaml header if we have a .md file extension
      return true if file.split(".").last == "md"
      !!(File.open(file, 'rb') { |f| f.readline } =~ /\A---\s*\r?\n/)
    rescue EOFError
      false
    end
  end
end

