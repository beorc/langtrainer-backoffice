desc "Prevent idle"
task :prevent_idle => :environment do
  ['http://training.langtrainer.com',
   'https://langtrainer-api.herokuapp.com/world',
   'https://langtrainer-backoffice.herokuapp.com/admin/login'].each do |url|
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    puts "#{url} => #{response.header}"
  end
end
