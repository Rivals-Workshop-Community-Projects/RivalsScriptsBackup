//Fried Rice with Egg & Ginger
/*
-----Ingredients-----
3 tbsp sunflower oil
100g ginger, finely sliced
50g garlic, finely sliced
100g small peeled cooked prawn
bunch spring onions, whites and greens separated and sliced
3 eggs, beaten
600g cooked rice (300g/11oz uncooked)
50ml rice wine or dry sherry
50ml light soy sauce
-----Method-----
1. Heat the oil in a wok.
2. Add the ginger and garlic, then stir-fry briefly until just coloured.
3. Add the prawns and the whites of the spring onions, and cook for a further 3 mins.
4. Pour in the beaten egg, let it set for a couple of secs, then break it up and stir well to scramble. 
5. Add the cooked rice and stir-fry everything together for 10 mins.
6. Add the rest of the spring onions, rice wine and soy, then toss everything together well. Serve immediately.
*/

if attack = AT_FSPECIAL and (hbox_num == 2) and was_parried {
	destroyed = 1 
	orig_player.was_parried = 1
	exit
}

if attack = AT_FSPECIAL and (hbox_num == 2) {
	x = player_id.x + player_id.spr_dir*20
	if player_id.sprite_index = sprite_get("fspecial_down") {y = player_id.y - 26}
	else {y = player_id.y - 40}
	if !player_id.attacking {instance_destroy() exit}
}

if attack = AT_FSPECIAL and collision_circle( x, y, 16, asset_get("pHitBox"), true, true ) and hbox_num == 2 {
	hitbox = collision_circle( x, y, 20, asset_get("pHitBox"), true, true )
	if hitbox = player_id.tableproj{
		player_id.window = 4
		player_id.window_timer = 0
		hitbox.vsp = 0
		hitbox.hsp = 0
		hitbox.player = player
		hitbox.x = player_id.x+player_id.spr_dir*40
		hitbox.y = player_id.y-30
		hitbox.length = 120
		hitbox.y += 10
	}
}

if attack = AT_FSPECIAL and collision_circle( x, y, 8, asset_get("obj_article1"), true, true ) and hbox_num == 2 {
	article = collision_circle( x, y, 12, asset_get("obj_article1"), true, true )
	if variable_instance_exists(article, "isgrill") {
	player_id.window = 4
	player_id.window_timer = 10
	player_id.edgecancel_fspecial = true
	}
}

if dienextframe = 1
	{
	instance_destroy()
	exit;
	}
	
if attack = AT_DSPECIAL and hbox_num = 1 {
	if collision_rectangle( x-20, y-2, x+20, y+46, asset_get("pHitBox"), true, true ) and lockout = 0{
		hits += 1
		var hitbox = collision_rectangle( x-20, y-2, x+20, y+46, asset_get("pHitBox"), true, true )
		if hitbox.effect != 2110996332 {
		send_angle = get_hitbox_angle(hitbox)
		if (hitbox.player_id.cancook != 1) and (hplockout = 0) {hplockout = 12 hp -= 1}

		hsp = lengthdir_x(4+(hitbox.kb_value*(1+hitbox.kb_scale*2)),send_angle)
		vsp = lengthdir_y(4+(hitbox.kb_value*(1+hitbox.kb_scale*2)),send_angle)
		hitstop = hitbox.hitpause 
		if !(hitbox.type = 2) {
		hitbox.player_id.old_hsp = hitbox.player_id.hsp
		hitbox.player_id.old_vsp = hitbox.player_id.vsp
		hitbox.player_id.hitstop = hitbox.hitpause/2
		hitbox.player_id.hitpause = 1
		hitbox.player_id.has_hit = true
		}
		sound_play(hitbox.sound_effect)
		if random_func( 0, 2, true ) sound_play(asset_get("sfx_shovel_hit_heavy2"))
		else sound_play(asset_get("sfx_shovel_hit_heavy1"))
		with hitbox.player_id spawn_hit_fx( hitbox.x, hitbox.y, hitbox.hit_effect);
		lockout = 5+hitstop+hitbox.no_other_hit
		if hitbox.effect = 2110996331 lockout = 5
		if hitbox.type = 2 and !(hitbox.transcendent) hitbox.destroyed = true
		hitbox_timer = 0
		if vsp < -7+hits vsp = -7+hits
		if abs(hsp) > 5 hsp = 5*sign(hsp)
		player = hitbox.player
		}
	}
	if lockout > 0 lockout -= 1
	if lockout < 0 lockout = 0
	if hplockout > 0 hplockout -= 1
	if hplockout < 0 hplockout = 0
}

if attack = AT_DSPECIAL and hbox_num = 1 and (!free) {
	dienextframe = 1
	player_id.maketable = 1
	player_id.tablex = x
	player_id.tabley = y+48
	player_id.tablehsp = hsp
	player_id.tableproj = noone
	player_id.tablehealth = hp
}
if attack = AT_DSPECIAL and hbox_num = 1 player_id.tableproj = self