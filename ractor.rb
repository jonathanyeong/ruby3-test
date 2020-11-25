
r1 = Ractor.new do
  10.times { puts "ok -> Ractor ID: #{self.object_id}" }
  raise "kaboom"
end

r2 = Ractor.new r1 do |r1|
  r1.take + "r2"
end

r3 = Ractor.new r2 do |r2|
  r2.take + "r3"
end

begin
  puts r3.take
rescue Ractor::RemoteError => e
  puts "\n=====\n"
  puts e
  puts e.cause.message
  puts e.ractor
end