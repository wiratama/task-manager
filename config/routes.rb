# class ActionDispatch::Routing::Mapper
# 	def draw(routes_path, routes_name)
# 		instance_eval(File.read(Rails.root.join("config/routes/#{routes_path}/#{routes_name}.rb")))
# 	end
# end

Rails.application.routes.draw do
  resources :firms
	draw :routesadmin, :admin_dashboard
end
