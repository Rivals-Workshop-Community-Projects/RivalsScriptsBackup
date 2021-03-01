/*

nspecial
O puts you in a state similar to forsburn smoke, you lay 1 destination at the start and 1 at the end. you can't use specials while laying the destination, pressing special ends it early.
O the destinations' lifespan is determined by the distance, shown by a little car.
O the destinations have a line connecting them, and a preview of the line is visible during nspecial.
O there's a rule prohibiting 2 destinations from having x-coordinates that are too close, because of fspecial.

fspecial
O causes the left/right destination (based on direction input) to chomp, then the enemy travels to the other one and is thrown straight upward.
O if no destinations are active, it summons one in front of you which serves double-duty - it chomps and throws.

uspecial
O command-dash to the destination that matches your stick input, avoiding pratfall if you reach it successfully by the time uspecial ends.
O stick input is displayed by the car.
O if no destinations are active, you go straight upward at less speed with no way to avoid pratfall.

dspecial
O create weak hitboxes all along the route connecting the destinations; there's a powerful sweetspot at the car's current position.
O destroys the destinations when used.
O if no destinations are active, nothing happens Lol!

*/



user_event(14);


//if landing give back double jump from neutral b
if !free {
	should_get_dj = 1;
}

if !free && down_down {
	if state == PS_IDLE || state == PS_CROUCH || state == PS_WALK || state == PS_DASH {
	set_attack(AT_EXTRA_1);
	}
}


var final_smash_charged = false;
if "fs_char_initialized" in self && fs_charge >= 200 {
  final_smash_charged = true;
} 

if nspecial_timer{
	
	if nspecial_timer == nspecial_timer_max && final_smash_charged == false{
		
		// place dest_1
		
		if instance_exists(dest_1) instance_destroy(dest_1);
		if instance_exists(dest_2) instance_destroy(dest_2);
        with (obj_article1) {
            if (player_id == other) {
                instance_destroy(self)
            }
        }
 
		
		dest_2 = noone;
		
		dest_1 = instance_create(x, y - 10, "obj_article1");
		dest_1.dest_num = 0;
		sound_play( sound_get("Signal_Lost"))
		sound_stop( sound_get("SIgnal_found"))
		
	}
	
		if nspecial_timer == 1 || y != clamp(y, 0 + 150, room_height) && dest_2 = noone && final_smash_charged == false{

		nspecial_timer = 1;
		// place dest_2
		
		dest_2 = instance_create(x, y - 10, "obj_article1");
		dest_2.dest_num = 1;
		
		dest_1.other_dest = dest_2;
		dest_2.other_dest = dest_1;
		sound_play( sound_get("Signal_found"))
		sound_stop( sound_get("Signal_Lost"))

		dest_2.state_timer = dest_1.state_timer;
		
		var dist = abs(dest_2.x - dest_1.x);
		
		if dist < 32{
			var diff_sign = sign(dest_2.x - dest_1.x) + (dest_2.x == dest_1.x);
			
			dest_2.x += diff_sign * (32 - dist);
		}
		
	}
	
	nspecial_timer--;
	
}


if djumps > 1 djumps = 1;







if dtilt_end && (state != PS_ATTACK_GROUND || attack != AT_DTILT || window == 1) {
    x += spr_dir_prev*dtilt_offset[0];
    y -= dtilt_offset[1];
    set_state(PS_IDLE_AIR);
    dtilt_end = false;
}

if spr_dir_prev != spr_dir spr_dir_prev = spr_dir;

if (state == PS_PARRY) {
	char_height = 90;
} else {
	char_height = 57;
}

if (state != PS_HITSTUN) {
	if (x > room_width - 10) {
		x = 10;
	} else {
		if (x < 10) {
			x = room_width - 10;
		}
	}
}

if state == PS_CROUCH ground_friction = ground_friction_crouch;
else ground_friction = ground_friction_init;

if state == PS_CROUCH max_fall = fall_crouch;
else max_fall = fall_init;

if state == PS_CROUCH && free state = PS_CROUCH;

if has_rune("A") {
knockback_adj       = 0.75;	
}

if swallowed { //Kirby ability script starts here
swallowed = 0
//Define any assets kirby might need to grab from YOUR CHARACTER
var ability_spr = sprite_get("kirby");
var ability_hurt = sprite_get("kirby_hurt")
var ability_car = sprite_get("kirby_car");
var ability_icon = sprite_get("kirbicon") //Optional
with enemykirby { //Define AT_EXTRA_3 for Kirby, using your asset variables where necessary in place of sprite_get or sound_get
set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 19);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 330);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 55);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_car);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_THROWS_ROCK, 1);
newicon = ability_icon //Optional, replaces the kirby ability icon
} //Kirby ability script ends here
}

if enemykirby != undefined { //if kirby is in a match & swallowed
with oPlayer { //Run through all players
if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
if  window == 1{
					move_cooldown[AT_EXTRA_3] = 45;
					move_cooldown[AT_NSPECIAL] = 32;
				}
}
}
}
