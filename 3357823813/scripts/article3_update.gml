
//State -1: Aerial Falling
if (state == -1){
	if (place_meeting(x,y+vsp,asset_get("par_block")) || (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-2,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+2,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-1,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+1,asset_get("par_jumpthrough")))	//I know there's an easier way to do this lol
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-3,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+3,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-4,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+4,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-5,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+5,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y-6,asset_get("par_jumpthrough")))
	|| (place_meeting(x,y+vsp,asset_get("par_jumpthrough"))&&place_meeting(x,y+6,asset_get("par_jumpthrough")))){
		do {
			y++;
		} while !(place_meeting(x,y-2,asset_get("par_block")) || (place_meeting(x,y-2,asset_get("par_jumpthrough"))));
		vsp = 0;
		if (player_id.dspecial_plat == true){
			state = 0;
			state_timer = 0;
		}
		else {
			state = 2;
			state_timer = 0;
		}
		sound_stop(sound_get("sfx_fire_pillar_charge"));
		sound_play(sound_get("sfx_fire_pillar_fire"));
	}
	else {
		vsp = 22; //vsp = 10;
		if (y >= room_height) shoulddie = true;
	}
}
else{
	vsp = 0;
	if (!place_meeting(x,y+2,asset_get("par_block")) && !place_meeting(x,y+2,asset_get("par_jumpthrough"))){
		shoulddie = true
	}
}

//State 0: Flame Pillar Inactive/Not Moving
if (state == 0){
	hsp = 0;
	depth = -7;
	if state_timer%16 == 0 {
		var sparks = spawn_hit_fx(x-ease_sineInOut(-5,5,random_func_2(0,360,true),360),y-16,player_id.fx_dspecial_sparks);
		sparks.depth = depth-5;
		sparks.sinx = random_func_2(1,360,true);
		sparks.fx_speed = 4;
		sparks.vsp = -.5;
		sparks.grav = -.2;
	}
	if state_timer%30 == 0 {
		var angle = random_func_2(0,20,true)+80;
		var embers = spawn_hit_fx(x,y-8,player_id.fx_nspecial2_trail);
		embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
		embers.depth = depth-1;
		embers.draw_angle = 90;
		embers.hsp = lengthdir_x(3,angle);
		embers.vsp = lengthdir_y(3,angle);
		embers.grav = .2;
	}
}

if (state > 1) player_id.move_cooldown[AT_DSPECIAL] = 60;


//State 1: Indicator Moving
if (state == 1){
	if (player_id.hitpause) shoulddie = true;
	if (place_meeting(x+40*player_id.spr_dir,y+2,asset_get("par_block")) || place_meeting(x+40*player_id.spr_dir,y+2,asset_get("par_jumpthrough"))){
		hsp = 4*player_id.spr_dir;
	}
	else hsp = 0;
	if state_timer%8 == 0 {
		var angle = random_func_2(0,20,true)+80;
		var embers = spawn_hit_fx(x,y-8,player_id.fx_nspecial2_trail);
		embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
		embers.depth = depth-1;
		embers.draw_angle = 90;
		embers.hsp = lengthdir_x(3,angle);
		embers.vsp = lengthdir_y(3,angle);
		embers.grav = .2;
	}
}

//State 2: Attack Startup
if (state == 2){
	hsp = 0;
	if state_timer == 0 {
		var pillar_end = spawn_hit_fx(x,y-16,player_id.fx_dspecial_end);
		pillar_end.spr_dir = random_func_2(0,2,true)==0?-1:1;
		pillar_end.depth = depth-1;
		pillar_end.vsp = -21;
		pillar_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
	}
	if (instance_exists(pillar_hitbox)){
		pillar_hitbox.image_yscale += 0.1;
		pillar_hitbox.y -= 10;
	}
	if (state_timer >= 12){
		instance_destroy(pillar_hitbox);
		pillar_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-150);
		state = 3;
		state_timer = 0;
	}
	var y_jump = 0;
	while(place_meeting(x,y-2+y_jump,asset_get("par_block")) or place_meeting(x,y-2+y_jump,asset_get("par_jumpthrough")) && y_jump > -2000){
		y_jump--;
	}
	y = y+y_jump;
}

//State 3: Attack Active
if (state == 3){
	hsp = 0;
	if (!instance_exists(pillar_hitbox)){
		pillar_cooldown--;
	}
	if (pillar_cooldown <= 0){
		pillar_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-150);
		pillar_cooldown = 15;
	}
	if state_timer%15 == 0 {
		var pillar_end = spawn_hit_fx(x,y-256,player_id.fx_nspecial_destroy);
		pillar_end.spr_dir = random_func_2(0,2,true)==0?-1:1;
		pillar_end.depth = depth-1;
	}
	if state_timer%3 == 0 {
		var sparks = spawn_hit_fx(x-ease_sineInOut(-16,16,random_func_2(0,360,true),360),y-16,player_id.fx_dspecial_sparks);
		sparks.depth = depth-5;
		sparks.sinx = random_func_2(1,360,true);
		sparks.fx_speed = 10;
		sparks.vsp = -8;
	}
	if state_timer%8 == 0 {
		var angle = random_func_2(0,30,true)+75;
		var embers = spawn_hit_fx(x-ease_sineInOut(-32,32,random_func_2(0,60,true),60),y-16,player_id.fx_nspecial2_trail);
		embers.spr_dir = random_func_2(1,2,true)==0?-1:1;
		embers.depth = depth-1;
		embers.draw_angle = 90;
		embers.hsp = lengthdir_x(5,angle);
		embers.vsp = lengthdir_y(5,angle);
		embers.grav = .4;
	}
	if (state_timer > 120){
		if (instance_exists(pillar_hitbox)) instance_destroy(pillar_hitbox);
		state = 4;
		state_timer = 0;
		pillar_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y-150);
		sound_play(asset_get("sfx_forsburn_combust"),0,0,1,.7);
	}
}

if (state == 4){
	if state_timer == 4 sound_play(asset_get("sfx_burnend"));
	if state_timer%15 == 0 && state_timer < 10 {
		var pillar_end = spawn_hit_fx(x,y-256,player_id.fx_nspecial_destroy);
		pillar_end.spr_dir = random_func_2(0,2,true)==0?-1:1;
		pillar_end.depth = depth+1;
	}
	if (state_timer >= 60) shoulddie = true;
}

if (player_id.was_parried){
	shoulddie = true;
}

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
	if (instance_exists(pillar_hitbox)) instance_destroy(pillar_hitbox);
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;