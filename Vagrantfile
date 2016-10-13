require 'json'
require 'yaml'

VAGRANTFILE_API_VERSION = "2"
confDir = $confDir ||= Dir.pwd

homesteadYamlPath = confDir + "/src/stubs/Homestead.yaml"
homesteadJsonPath = confDir + "/src/stubs/Homestead.json"
afterScriptPath = confDir + "/src/stubs/after.sh"
aliasesPath = confDir + "/src/stubs/aliases"

require File.expand_path(File.dirname(__FILE__) + '/scripts/homestead.rb')

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    if File.exists? aliasesPath then
        config.vm.provision "file", source: aliasesPath, destination: "~/.bash_aliases"
    end

    if File.exists? homesteadYamlPath then
        Homestead.configure(config, YAML::load(File.read(homesteadYamlPath)))
    elsif File.exists? homesteadJsonPath then
        Homestead.configure(config, JSON.parse(File.read(homesteadJsonPath)))
    end

    if File.exists? afterScriptPath then
        config.vm.provision "shell", path: afterScriptPath
    end

    config.vm.provision :shell, path: "bootstrap.sh"
end
