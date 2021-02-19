//article1_update
//Coding here done by Archytas.

state_timer++;

if (init == 0) {
    init = 1;
    with player_id {
    	if !other.parried other.spr_dir = spr_dir;
    	other.hsp_val = nspecial_hsp;
    	other.anim_speed = get_hitbox_value(AT_NSPECIAL,7,HG_PROJECTILE_ANIM_SPEED);
    }
    if parried {
		spr_dir = par_player.spr_dir;
		hsp *= -1;
	} 
}


image_index = stay_timer*anim_speed;
stay_timer++;

if (state == 0) { //building
	hsp = hsp_val*spr_dir;
	if !instance_exists(hbox) {
		hbox = create_hitbox(AT_NSPECIAL,7,x,y);
		hbox.x = x+hbox.x_pos;
    	hbox.y = y+hbox.y_pos;
	}
	state = 1;
}


if (state == 1) {//Active
	hsp = hsp_val*spr_dir;
    
    inst = instance_place(x,y,asset_get("obj_article2")); //Passive Flame
    if !instance_exists(hbox) {
    	sprite_index = sprite2;
    	dest_timer = 0;
    	state = 2;
    } else {
    	hbox.x = x+hbox.x_pos;
    	hbox.y = y+hbox.y_pos;
    	if (parried){ 
    		hbox.player_id = par_player;
    	}
    }
    
}


if (state == 2) { //Disipate
	image_index = (image_number-1)*(dest_timer*1.2/dest_time);
	if (dest_timer > dest_time) {
		instance_destroy();
		exit;
	}
	dest_timer++;
	hsp = hsp_val*spr_dir / 3;
}


if (state == 3) { //Charged
	if instance_exists(hbox) && hbox.hbox_num == 7 {
		instance_destroy(hbox);
		hsp_val = player_id.nspecial2_hsp;
		sprite_index = sprite3;
		state_timer = 0;
		hbox = create_hitbox(AT_NSPECIAL,8,x,y); //Detection hitbox
	}
	hsp = hsp_val*spr_dir;
	//inst = instance_place(x,y,asset_get("oPlayer"));
	if (!instance_exists(hbox)) {
		dest_timer = 0;
    	state = 4;
    } else {
		hbox.x = x+hbox.x_pos;
    	hbox.y = y+hbox.y_pos;
    	if parried hbox.player_id = par_player;
    }
    state_timer++;
}


if (state == 4) { //Alt Disipate (Explode)
	image_index = (image_number-1)*(dest_timer/dest_time);
	if dest_timer == 0 {
		hbox = create_hitbox(AT_NSPECIAL,9,x,y); //Explosion Hitbox
		hbox.x = x+hbox.x_pos-(12*spr_dir);
    	hbox.y = y+hbox.y_pos;
		sprite_index = sprite4;
	}
	hsp = 0;
	if (dest_timer > dest_time) {
		instance_destroy();
		exit;
	}
	dest_timer++;
}
