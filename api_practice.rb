require "http"

# https://data.cityofchicago.org/resource/xzkq-xp2w.json

# https://data.cityofchicago.org/resource/n4bx-5kf6.json

info = HTTP.get("https://data.cityofchicago.org/resource/n4bx-5kf6.json").parse

job_titles = []
info.each_with_index do |job, index|
  job_titles << info[index]["job_titles"]
end

p job_titles.length

hourly_rate = []
info.each_with_index do |rate, index|
  hourly_rate << info[index]["hourly_rate"]
end

annual_salary = []
info.each_with_index do |salary, index|
  annual_salary << info[index]["annual_salary"]
end

# p annual_salary[0].is_a?(String)

salaries = []
annual_salary.each do |salary|
  if salary.is_a?(String)
    salaries << salary.to_i
  end
end
p salaries.length

# p info
