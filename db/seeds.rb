require 'json'

file_project = "projects.json"
file_workexperience = "workexperiences.json"

puts "---- DeletingProjects----"
# Project.delete_all

# # Parse the JSON
# file = File.read(file_project)
# data_hash = JSON.parse(file)
# allkeys = data_hash.keys

# puts "---- Creating Projects----"
# allkeys.each do |key|
#   new_project = Project.new(projectname: data_hash[key]['name'],
#                             context:data_hash[key]['context'],
#                             mokup:data_hash[key]['mokup'],
#                             client:data_hash[key]['client'],
#                             codetags:data_hash[key]['codetags'],
#                             githublink:data_hash[key]['githublink'],
#                             weblink:data_hash[key]['weblink'],
#                             category:data_hash[key]['category'],
#                             projecttype:data_hash[key]['projecttype'],
#                             imgurl:data_hash[key]['imgurl'],
#                             logourl:data_hash[key]['logourl'],
#                             logoclient:data_hash[key]['logoclient'],
#                             features:data_hash[key]['features'])
#   new_project.save
#   puts "---- Project created ----"
# end


# Parse the JSON
file = File.read(file_workexperience)
data_hash = JSON.parse(file)
allkeys = data_hash.keys

puts "---- Creating Projects----"
allkeys.each do |key|

    new_workfeature = Workfeature.new(name: data_hash[key]['feature'])
    new_workfeature.save

  puts "next project ----"
  new_workexperience = Workexperience.new(clientname: data_hash[key]['clientname'],
                            interval:data_hash[key]['interval'],
                            role:data_hash[key]['role'],
                            workfeature_id: new_workfeature.id,
                            description:data_hash[key]['description'])
  new_workexperience.save
  # puts "---- Project created ----"
end

  # "workexperience1": {
  #   "clientname": "Mister Auto",
  #   "interval": "Décembre 2021 - Septembre 2022",
  #   "role": "Consultant digital",
  #   "feature": [
  #     "Intégration des emails sur la plateforme en HTML / CSS en suivant les best practices de l'emailing",
  #     "Intégration des données transactionnelles JSON (Tableaux produits, footer dynamique, conditions, tableau d'expédition etc..)",
  #     "+1M1 mails envoyés, 96% délivrabilité"
  #   ],
  #   "description": "Lead opérationnel sur la mission entre la DSI et les équipes métiers pour la migration de l'ensemble des mails transactionnels de Mister Auto sur la plateforme de marketing automation Emarsys pour 13 pays et une quarantaine de mails."
  # },

  #   create_table "workexperiences", force: :cascade do |t|
  #   t.string "clientname"
  #   t.string "interval"
  #   t.string "role"
  #   t.bigint "workfeature_id", null: false
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.text "description"
  #   t.index ["workfeature_id"], name: "index_workexperiences_on_workfeature_id"
  # end
