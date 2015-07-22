require 'find'
require 'bundler'

desc 'Check for C extensions used in the projects'
task :ext_check do
  check_gems
end


private

def check_gems
  gems_including_c_extension = []

  get_gem_list.each do |gem_name|
    gems_including_c_extension << gem_name if has_c_extension?(gem_name)
  end

  if gems_including_c_extension.any?
    puts ""
    puts "Gems with C extensions:"
    puts ""
    puts gems_including_c_extension
  else
    puts "There are no gems with C extensions"
  end
end

def get_gem_list
  Bundler.load.specs.map { |spec| spec.name }
end

def has_c_extension?(gem_name)
  Find.find(get_gem_path(gem_name)).select { |p| /extconf.rb\z/ =~ p }.any?
end

def get_gem_path(gem_name)
  Bundler.rubygems.find_name(gem_name).first.full_gem_path
end
