//sound_play(asset_get("sfx_birdflap"));

ignored_damage = 0; //HEY THIS IS A SPECIAL CASE, REMOVE THIS LINE TO MAKE STUFF LIKE THE SPORELING OVERRIDE THE PROXY

image_index += anim_speed - (floor(image_index) == 4)*(anim_speed*0.9)
if image_index >= image_number image_index -= 4;

switch(state) {
case -1:
	vsp += grav;
	if !free state = 0;
break;
default:
//sound_play(asset_get("sfx_birdflap"));
	for (i = 0; i < 3; i++) {
		if !instance_exists(cloud[i]) {
			cloud[i] = instance_create(x,y-(i+1)*60,"obj_article2");
			cloud[i].player_id = player_id;
		} else {
			cloud[i].x = x;
			cloud[i].y = y-(i+1)*60;
			cloud[i].timer = 31;
		}
	}
	//if free state = -1;
	/*
	var playdmg = get_player_damage(player_id.player)-ignored_damage;

	damagemin = min(damagemin, playdmg); //Sets the minimum lower if they heal below it.

	if playdmg > damagemin {
	damage += playdmg - damagemin

	set_player_damage(player_id.player, damagemin + max(damage - damagelim, 0)+ignored_damage);
	
	
	}
	*/
	
	
	var playdmg = get_player_damage(player_id.player)
	
	//Old code 
	/*
	if playdmg-ignored_damage > old_damage {
		damage += ((playdmg-ignored_damage) - old_damage );
		set_player_damage(player_id.player, old_damage+ignored_damage)
	}
	*/
	
	//CURRENT CODE HERE
	if playdmg >= damagemin {
	
		player_id.blockalpha += 0.1
	
		if playdmg > damagemin {
			damage += (playdmg - damagemin)
			set_player_damage(player_id.player, floor(damagemin + max(damage - damagelim, 0)))
			
		} 
	}
	if damage >= damagelim {damage = damagelim; state = 3}
	//if damage > 0 damagetick++;
	//if damagetick == 60 {damage = max(damage-1, 0); damagetick = 0;}
	player_id.mushalpha += 0.1
	
	
	old_damage = get_player_damage(player_id.player)
	
	var marg = 128;
	if x < -marg or x > room_width+marg or y < -marg or y > room_height+marg {
		state = 1;
	}	
	if free vsp += grav; else vsp = 0;
break;
case 1: //Popping
case 2:
case 3:
	state_timer++;
	
	if state_timer = 1 {
	sound_play(asset_get("sfx_frog_dspecial_swallow"));
	}
	var l = 10+(damage/4)
	state_timer = min(state_timer, ceil(l))
	sprite_index = sprite_get("nodeready");
	image_index = min((state_timer/l)*(image_number+1), image_number)
	if state_timer >= l && state == 3 && !transferred {
		set_player_damage(player_id.player,floor(get_player_damage(player_id.player)+damage))
		transferred = true;
	}
	if state_timer >= l && state != 3 {
		if !transferred && state == 1 set_player_damage(player_id.player,floor(get_player_damage(player_id.player)+damage))
		transferred = true;
		spawn_hit_fx(x,y,player_id.fx_sprites[0]);
		
		//set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 4+floor(damagelim/4));
		var hb = create_hitbox(AT_DSPECIAL_2, 1, x, y)
		
		hb.x += hb.x_pos
		hb.y += hb.y_pos
		hb.damage += floor(damage/4)
		
		sound_play(asset_get("sfx_forsburn_combust"));
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
	/*
		hb = instance_create(x,y-20,"obj_article2");
		hb.vsp = -18
		hb.timer = 30+damage;
		hb.player_id = player_id;
		hb = instance_create(x,y-20,"obj_article2");
		hb.vsp = -9
		hb.hsp= -5
		hb.timer = 30+damage;
		hb.player_id = player_id;
		hb = instance_create(x,y-20,"obj_article2");
		hb.vsp = -9
		hb.hsp = 5
		hb.timer = 30+damage;
		hb.player_id = player_id;
	*/
		instance_destroy();
	}
	player_id.mushalpha += 0.1
break;
}
