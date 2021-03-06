# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsync_ssh/version'

Gem::Specification.new do |spec|
  spec.name          = 'rsync_ssh'
  spec.version       = RsyncSSH::VERSION
  spec.authors       = ['Cameron Mullen']
  spec.email         = ['cameron.mullen@gmail.com']

  spec.summary       = 'Gem for keeping your ruby source in sync with a ' \
                       'remote ssh server using rsync'
  spec.homepage      = 'https://github.com/camullen/rsync_ssh'
  spec.license       = 'GPL-2.0'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.47'
end
