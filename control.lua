
script.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "tf-cokery-dummy" then
		game.get_surface("nauvis").create_entity{name = "tf-cokery", position = event.created_entity.position, force = game.forces.player}
		event.created_entity.destroy()
	end
end)