//article1_update

state_timer += 1
if lockout > 0 lockout -= 1
if free vsp += 0.5

if state = 0 {
	image_index += 0.2
	if state_timer = 1 and player_id.sfxon sound_play(asset_get("sfx_land_med"))
	if state_timer = 10 and player_id.sfxon sound_play(asset_get("sfx_plant_ready"))
	if state_timer = 30 {
	state = 1
	state_timer = 0
	sprite_index = sprite_get("scarecrow_idle");
	image_index = 0
	}
}

if state = 1 {
	image_index += 0.05
}

if state = 2 {
	image_index += 0.2
	if state_timer = 30 {
		instance_destroy() 
		exit
	}
}

if y > room_height {
	instance_destroy() 
	exit
}

if state != 2 and collision_rectangle( x-16, y-60, x+16, y, asset_get("pHitBox"), true, true ) and lockout = 0{
	var hitbox = collision_rectangle( x-16, y-60, x+16, y, asset_get("pHitBox"), true, true )
	if !(get_player_team( hitbox.player_id.player ) == get_player_team( player_id.player ))  {
	hitstop = hitbox.hitpause 
	if hitbox.player_id.hitstop > 0 lockout += 3
	hitbox.player_id.has_hit = true
	sound_play(hitbox.sound_effect)
	with hitbox.player_id spawn_hit_fx( hitbox.x, hitbox.y, hitbox.hit_effect);
	lockout += 5+hitstop+hitbox.no_other_hit
	if hitbox.type = 2 and !(hitbox.enemies) hitbox.destroyed = true
	state = 2
	state_timer = 0
	image_index = 0
	sprite_index = sprite_get("scarecrow_die")
	player_id.myscarecrow = noone
	}
}