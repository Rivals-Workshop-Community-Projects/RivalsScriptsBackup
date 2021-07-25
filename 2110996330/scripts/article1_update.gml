//article1_update
if abs(hsp) > 15 {
	while abs(hsp) > 15 hsp -= sign(hsp)
	}
if player_id.my_table != self and player_id.my_table != noone  {instance_destroy() exit}


hsp = ceil(hsp)
if state_timer mod 3 = 0 and abs(hsp) > 0 hsp -= sign(hsp)

if 1 > abs(hsp) hsp = 0

/*
And don't come back.
if abs(hsp) > 5 and !hitstop and player_id.boarded {
	var myx = x
	var myy = y+48
	var myhsp = hsp
	with player_id {
	vroom = create_hitbox( AT_DSPECIAL, 2, myx, myy )
	spawn_hit_fx(myx,myy+44,137)
	vroom.hsp = myhsp
	}
}
*/

if collision_rectangle( x-20, y-2, x+20, y+96, asset_get("pHitBox"), true, true ) and lockout = 0{
	var hitbox = collision_rectangle( x-20, y-2, x+20, y+96, asset_get("pHitBox"), true, true )
	if hitbox.effect != 2110996332 {
	//send_angle = get_hitbox_angle(hitbox) + random_func( 0, 36, true ) - 18
	send_angle = get_hitbox_angle(hitbox)
	if (hitbox.player_id.cancook != 1) and (hplockout = 0) {hplockout = 12 hp -= 1}
	if hitbox.effect = 2110996330 send_angle = 90-90*hitbox.player_id.spr_dir
	if hitbox.effect = 2110996334 vsp = -10-(hitbox.player_id.strong_charge/20)
	hsp = lengthdir_x(4+(hitbox.kb_value*(1+hitbox.kb_scale*2)),send_angle)
	hitstop = hitbox.hitpause 
	if hitbox.player_id.hitstop > 0 lockout += 3
	lastplayer = hitbox.player
	if !(hitbox.type = 2) {
		hitbox.player_id.old_hsp = hitbox.player_id.hsp
		hitbox.player_id.old_vsp = hitbox.player_id.vsp
		hitbox.player_id.hitstop = hitbox.hitpause/2
		hitbox.player_id.hitpause = 1
		hitbox.player_id.has_hit = true
	}
	if hitbox.effect = 2110996333 {hitbox.player_id.old_vsp = 18 lockout += 20}
	if player_id.my_table_plat != noone player_id.my_table_plat.hitstop = hitbox.hitpause
	hitbox.player_id.has_hit = true
	sound_play(hitbox.sound_effect)
	if random_func( 0, 2, true ) sound_play(asset_get("sfx_shovel_hit_heavy2"))
	else sound_play(asset_get("sfx_shovel_hit_heavy1"))
	with hitbox.player_id spawn_hit_fx( hitbox.x, hitbox.y, hitbox.hit_effect);
	lockout += 5+hitstop+hitbox.no_other_hit
	if hitbox.type = 2 and !(hitbox.transcendent) hitbox.destroyed = true
	}
}

if lockout > 0 lockout -= 1
if lockout < 0 lockout = 0
if hplockout > 0 hplockout -= 1
if hplockout < 0 hplockout = 0
state_timer += 1

if hp <= 0 and state != 1 {
	with player_id {
		my_table.state = 1
		my_table.state_timer = 0
		my_table_plat.state = 1
		my_table_plat.state_timer = 0
		my_table_plat = noone
	}
}

//if collision_rectangle(x-43,y+95,x+43,y+100,asset_get("par_jumpthrough"),true, true) or collision_rectangle(x-43,y+95,x+43,y+100,asset_get("par_block"),true, true) free = false
if free {
	//if state_timer = 1  x += 10*player_id.spr_dir
	var myx = x
	var myy = y+48
	var myspd = hsp
	var myvsp = vsp
	var myplayer = lastplayer
	var myhealth = hp
	with player_id {
		fallingtable = create_hitbox( AT_DSPECIAL, 1, myx, myy )
		fallingtable.hsp = myspd
		fallingtable.player = myplayer
		fallingtable.hp = myhealth
		fallingtable.vsp = myvsp
	}
	if player_id.boarded player_id.hsptobe = hsp
	instance_destroy(player_id.my_table_plat)
	player_id.my_table_plat = noone
	player_id.my_table = noone
	instance_destroy()
	exit
}

if state = 1 {
	if state_timer = 12 {
		instance_destroy() 
		exit
	}
}


