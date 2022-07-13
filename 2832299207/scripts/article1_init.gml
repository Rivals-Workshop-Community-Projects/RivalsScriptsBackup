//article1_init.gml

//walls

sprite_index = sprite_get("wall")
mask_index = sprite_get("wall_hurt")



image_xscale = spawn_variables[0]

sfx_lower = sound_get("gate_lower")
sfx_close = sound_get("gate_close")

triggered = false

timer = 0

raise_timer = 0