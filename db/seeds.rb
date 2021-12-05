require 'json'

file_project = "projects.json"

puts "---- DeletingProjects----"
Project.delete_all

# Parse the JSON
file = File.read(file_project)
data_hash = JSON.parse(file)
allkeys = data_hash.keys

puts "---- Creating Projects----"
allkeys.each do |key|
  new_project = Project.new(projectname: data_hash[key]['name'],
                            context:data_hash[key]['context'],
                            generaltags:data_hash[key]['name'],
                            codetags:data_hash[key]['codetags'],
                            githublink:data_hash[key]['githublink'],
                            weblink:data_hash[key]['weblink'],
                            category:data_hash[key]['category'],
                            projecttype:data_hash[key]['projecttype'],
                            imgurl:data_hash[key]['imgurl'],
                            logourl:data_hash[key]['logourl'],
                            results:data_hash[key]['results'],
                            features:data_hash[key]['features'])
  new_project.save
  puts "---- Project created ----"
end
