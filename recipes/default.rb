packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    fontconfig-config
  /
when "precise"
  packages |= %w/
    fontconfig-config
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
