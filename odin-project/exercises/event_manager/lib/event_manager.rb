require 'csv'
require 'google/apis/civicinfo_v2'
require 'erb'
require 'date'

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5, "0")[0..4]
end

def clean_phone_number(phone_number)
  phone_number = phone_number.gsub(/\D/, '') # Remove all non-digit characters

  if phone_number.length < 10 || phone_number.length > 11
    'Invalid'
  elsif phone_number.length == 10
    phone_number
  elsif phone_number.length == 11
    phone_number[0] == '1' ? phone_number[1..10] : 'Invalid'
  else
    'Invalid'
  end
end

def legislators_by_zipcode(zip)
  civic_info = Google::Apis::CivicinfoV2::CivicInfoService.new
  civic_info.key = 'YOUR_API_KEY'

  begin
    civic_info.representative_info_by_address(
      address: zip,
      levels: 'country',
      roles: ['legislatorUpperBody', 'legislatorLowerBody']
    ).officials
  rescue
    'You can find your representatives by visiting www.commoncause.org/take-action/find-elected-officials'
  end
end

def save_thank_you_letter(id, form_letter)
  Dir.mkdir('output') unless Dir.exist?('output')

  filename = "output/thanks_#{id}.html"

  File.open(filename, 'w') do |file|
    file.puts form_letter
  end
end

puts 'EventManager initialized.'

contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

template_letter = File.read('form_letter.erb')
erb_template = ERB.new template_letter

registration_hours = Hash.new(0)
registration_days = Hash.new(0)
days_of_the_week = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]

contents.each do |row|
  id = row[0]
  name = row[:first_name]
  zipcode = clean_zipcode(row[:zipcode])
  phone_number = clean_phone_number(row[:homephone])
  registration_date = DateTime.strptime(row[:regdate], '%m/%d/%y %k:%M')
  registration_hour = registration_date.hour
  registration_day = registration_date.wday

  registration_hours[registration_hour] += 1
  registration_days[registration_day] += 1

  legislators = legislators_by_zipcode(zipcode)

  form_letter = erb_template.result(binding)

  save_thank_you_letter(id, form_letter)
end

# Display the peak registration hours
registration_hours = registration_hours.sort_by { |hour, count| -count }
puts "Peak Registration Hours:"
registration_hours.each do |hour, count|
  puts "#{hour}:00 - #{count} registrations"
end

# Display the peak registration days
registration_days = registration_days.sort_by { |day, count| -count }
puts "Peak Registration Days:"
registration_days.each do |day, count|
  puts "#{days_of_the_week[day]} - #{count} registrations"
end

