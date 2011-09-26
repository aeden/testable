task :default => [:test]

task :test do
  $:.unshift('.')
  FileList['./examples/*.rb'].each do |f|
    require f
  end
  Testable.run
end
