Gem::Specification.new do |s|
  s.name = "ruby_reserved_fds"
  s.version = 0.1
  s.platform = Gem::Platform::RUBY
  s.summary = "Checks if a file descriptor is reserved by the Ruby VM."
  s.description = "A tiny module to access the Ruby C function rb_reserved_fd_p()."

  s.required_ruby_version = ">= 1.9.3"

  s.files = Dir.glob("lib/*.rb") +
            Dir.glob("ext/**/*.{c,h,rb}")
  s.extensions = [ "ext/ruby_reserved_fds/extconf.rb" ]

  s.authors = [ "Mark Somerville" ]
  s.email = [ "mark@scottishclimbs.com" ]
  s.homepage = "https://github.com/Spakman/ruby_reserved_fds/"
  s.licenses = [ "MIT", "GPL-3" ]
end
