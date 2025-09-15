//update.gml
if prevent_fspecial {
	move_cooldown[AT_FSPECIAL] = 2;
}

if prevent_uspecial {
	move_cooldown[AT_USPECIAL] = 2;
}  

if cancel_pratfall {
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
}
else {
	reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE);
}

//if prevent_uspecial {
	//move_cooldown[AT_USPECIAL] = 2;
//} 

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

	if(poisoned_opponent != noone){
			

		if(poisoned_opponent.poisoned == true){
			poisoned_opponent.poisoned_timer--;
		}
		//with (poisoned_id) {
			if (poisoned_opponent.poisoned_timer == 799){
				sound_play(asset_get("sfx_absa_taunt"), false, noone, 1, 0.8);
			}

			if (poisoned_opponent.poisoned_timer == 1){
				sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 0.8);
			}
	//	}

		if (poisoned_opponent.poisoned_timer == 0){
			poisoned_opponent.poisoned = false;
			poisoned_opponent.poisoned_id = noone;
			
		}

		with (poisoned_opponent) {

			if (poisoned == false){
				init_shader();
			}

			if webbed == true {
					poisoned_id = noone;
			}

			if (state == PS_RESPAWN || state == PS_DEAD) || bubbled {
				poisoned_id = noone;
				poisoned_timer = 0;
				init_shader();
				poisoned = false;
				if webbed == true {
					webbed = false;
				}
			}
		}
	}

//if (opp_webbed) {

	//if (webbed_opponent != noone) { 
with(asset_get("oPlayer")){
	if(id != other.id){
		//print(state);
		if(webbed == true){
				if state != PS_HITSTUN {
					set_state(PS_HITSTUN);
				}
				
				//print(webbed_id);
				//print(id);
				//print(other.id);
				//print(other.webbed_opponent.id);
				if(webbed_id == other.id && webbed == true){
					webbed_timer++;
				}
				//id.webbed_timer++;
				damage_scaling = 1.25;
				can_wall_tech = false;
				visible = false;
			

				//print(webbed_opponent);
				//print(webbed_opponent.id);

				if(webbed_timer > 40){
					if(!free || webbed_timer == 80){ 
						//var oX = id.x
						//var oY = id.y
						with (webbed_id) {
							var oX = webbed_opponent.x
							var oY = webbed_opponent.y
							create_hitbox(AT_JAB, 8, oX, oY);
						}
						//create_hitbox(AT_DSPECIAL, 2, oX, oY);
						webbed = false;
						sound_play(asset_get("sfx_syl_dstrong"), false, noone, 1, 1.1);
						webbed_timer = 0;
						//print(webbed_timer);
						damage_scaling = 1;
						can_wall_tech = true;
						visible = true;
						webbed_id.webbed_opponent = noone;
						init_shader();
						return;
					}
				}
		}
		else {
			webbed_timer = 0;
			//print(webbed_timer);
			damage_scaling = 1;
			can_wall_tech = true;
			visible = true;
		}
	}
}

	//}

	//else {
				//opp_webbed = false;
	//}

//}
/*
with(asset_get("oPlayer")){
	if (id != other.id){
		if (webbed_timer == 100){
				webbed_timer = 0;
				other.webbed_opponent = noone;
				init_shader();
		}

	}
}*/

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

