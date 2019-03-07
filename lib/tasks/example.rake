namespace :example do
  namespace :first do
    desc 'This tasks prints a Hello World'
    task :print_hello do
        puts "Hello World"
    end
  end


  namespace :second do
    desc 'This tasks writes a file every time it is called'
    task :write_file do
      File.open("example.txt", "w") { |file| file.puts "I wrote this with ruby at #{Time.now}!" }
    end
  end
end
