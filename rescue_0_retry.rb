files = %w[file.txt file1.txt file2.txt]

begin
  open(files.shift, 'w'){|f| f.puts 'Ruby!!'}
rescue SystemCallError => ex
  $stderr.puts "#{ex} (#{ex.class})"
  retry
end
