if ActiveSupport.gem_version < Gem::Version.new("7.1.0.alpha")
  if defined?(ActiveModel)
    ActiveModel::Model.send :include, NameOfPerson::HasPersonName
  end
else
  ActiveSupport.on_load(:active_model) do
    include NameOfPerson::HasPersonName
  end
end
