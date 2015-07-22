Gem::Specification.new do |s|
  s.name = "ext_check"
  s.version = "0.1.0"
  s.licenses = ['MIT']
  s.authors = ["Dimitar Kostov"]
  s.description = %q{ExtCheck provides rails task for checking for C extensions}
  s.summary = %q{Provides rails task for checking for C extensions}
  s.email = ["mitko.kostov@gmail.com"]
  s.homepage = "http://github.com/mytrile/ext_check"
  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
end
