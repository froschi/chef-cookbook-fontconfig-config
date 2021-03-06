include_recipe "ttf-dejavu-core"
include_recipe "ucf"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    fontconfig-config
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
