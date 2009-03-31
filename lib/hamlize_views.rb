class HamlizeViews

  def initialize(path)
    @path = path
  end
  
  def convert!
    files = Dir["#{@path}/**/*.html.erb"]
    if files.empty?
      puts "No erb files found in directory '#{@path}'" 
      return 
    else
      puts
      files.each do |file|
        newfile = file.gsub(/\.erb$/, '.haml')
        puts "#{file} --> #{newfile}"
        `html2haml -r #{file} #{newfile}`
      end
      erb_files_path = "#{@path}/*.html.erb".gsub("//", "/")
      puts
      puts "Done! Be sure to check the new files for conversion flaws."
      puts "To get rid of the old view files: rm #{erb_files_path}"
      puts
    end
  end
  
end