require "http"

# https://data.cityofchicago.org/resource/xzkq-xp2w.json

info = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse

job_titles = []
info.each_with_index do |job, index|
  job_titles << info[index]["job_titles"]
end

hourly_rate = []
info.each_with_index do |rate, index|
  hourly_rate << info[index]["hourly_rate"]
end

annual_salary = []
info.each_with_index do |salary, index|
  annual_salary << info[index]["annual_salary"]
end

annual_salary.each do |salary|
  if salary.type ==
end
p annual_salary.sort

# p info
