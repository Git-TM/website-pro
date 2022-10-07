require 'json'

file_project = "projects.json"
file_workexperience = "workexperiences.json"

puts "---- DeletingProjects----"
Project.delete_all
Workexperience.delete_all

# Parse the JSON
file = File.read(file_project)
data_hash = JSON.parse(file)
allkeys = data_hash.keys

puts "---- Creating Projects----"
allkeys.each do |key|
  new_project = Project.new(projectname: data_hash[key]['name'],
                            context:data_hash[key]['context'],
                            codetags:data_hash[key]['codetags'],
                            githublink:data_hash[key]['githublink'],
                            weblink:data_hash[key]['weblink'],
                            projecttype:data_hash[key]['projecttype'],
                            imgurl:data_hash[key]['imgurl'],
                            logourl:data_hash[key]['logourl'],
                            features:data_hash[key]['features'])
  new_project.save
  puts "---- Project created ----"
end


# Parse the JSON
file = File.read(file_workexperience)
data_hash = JSON.parse(file)
allkeys = data_hash.keys

puts "---- Creating Projects----"
allkeys.each do |key|
  new_workexperience = Workexperience.new(clientname: data_hash[key]['clientname'],
                            interval:data_hash[key]['interval'],
                            role:data_hash[key]['role'],
                            feature: data_hash[key]['feature'],
                            description:data_hash[key]['description'])
  new_workexperience.save
  puts "---- #{data_hash[key]['clientname']} - Project created ----"
end
