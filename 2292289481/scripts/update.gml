//update.gml

if prevent_fspecial {
	move_cooldown[AT_FSPECIAL] = 2;
} 

if prevent_uspecial {
	move_cooldown[AT_USPECIAL] = 2;
} 

if !free or state == PS_WALL_TECH or state == PS_WALL_JUMP {
	prevent_fspecial = false;
	prevent_uspecial = false;
}

if(grabbedid != noone){
	grabbedid.ungrab++;
	if(grabbedid.ungrab == 2){
		grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		grabbedid.state = PS_TUMBLE;
		grabbedid.ungrab = 0;
		grabbedid = noone;
	}
}

// Poison effect

with(asset_get("oPlayer")){
    if (id != other.id){
       if(poisoned_id == other.id && poisoned == true){
            poisoned_timer--;
            outline_color = [ 11, 107, 73 ];
			damage_scaling = 1.25;
        }
	   if (poisoned_timer == 249){
            sound_play(asset_get("sfx_absa_taunt"), false, noone, 1, 0.8);
       }
	   if (poisoned_timer == 1){
            sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 0.8);
       }
       if (poisoned_timer == 0){
            poisoned = false;
       }
	   if (poisoned == false){
            outline_color = [ 0, 0, 0 ];
			init_shader();
			damage_scaling = 1;
       }
	   if (state == PS_RESPAWN){
            poisoned_timer = 0;
			init_shader();
			poisoned = false;
       }
    }
}

// Repeat taunt

if (attack == AT_TAUNT) {
    if (taunt_down) {
        taunt_repeat = true;
    }
    else {
        taunt_repeat = false;
    }
	/*
	if (window == 2) && (window_timer == 17){
		if (attack == AT_TAUNT) && (spr_dir == 1){
			particles_hit_fx = spawn_hit_fx( x - 30, y - 10, 14 );
			particles_hit_fx.depth = -10;
		}
		else if (attack == AT_TAUNT) && (spr_dir == 9)	{
			particles_hit_fx = spawn_hit_fx( x + 30, y - 10, 14 );
			particles_hit_fx.depth = -10;
		}
	}
	*/
}

// Intro animation

if (introTimer2 < 4) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}
//this increments introTimer every few frames, depending on the number entered

if (introTimer < 11) {
    draw_indicator = false;
} else {
    draw_indicator = true;
}
//this stops the overhead HUD from getting in the way of the animation. If your animation does not involve much movement, this may not be necessary.

