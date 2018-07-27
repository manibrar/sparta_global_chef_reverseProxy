include_recipe 'mongodb::default'


#Mongodb-org added to source list
apt_repository "mongodb-org" do
  uri "http://repo.mongodb.org/apt/ubuntu"
  distribution "xenial/mongodb-org/3.2"
  components ["multiverse"]
  keyserver 'hkp://keyserver.ubuntu.com:80'
  key "EA312927"
end

#Install and upgrade
package "mongodb-org" do
  action :install
end
