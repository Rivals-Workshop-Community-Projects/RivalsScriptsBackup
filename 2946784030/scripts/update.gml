//Holding Bike Stuff
if has_rock == true{
    move_cooldown[AT_FSPECIAL] = 180;
    if attack != AT_PICKUP
    && attack != AT_NTHROW{
        attack = AT_PICKUP;
    }
    
    /*
    jump_speed = 8;
    short_hop_speed = 6;
    
    walk_speed = 2;
    air_max_speed = 3.5;
    air_accel = .4;
    jump_start_time = 8;
    */
    
}
/*
if has_rock == false{
    
    jump_speed = 11;
    short_hop_speed = 7.5;
    
    walk_speed = 2.75;
    air_max_speed = 5;
    air_accel = .55;
    jump_start_time = 5;
}
*/

//Wario Anti-Cheat
if wario_anticheat{
    instance_create(x, y, "obj_article2");
    with oPlayer{
        hitpause = true;
        hitstop = 10;
        hitstop_full = 10;
    }
}

//Platform Holds Taunt

if free{ move_cooldown[AT_TAUNT] = 4; }

//Voice Lines!!!!
if wario_voiced == true{
    user_event ( 0 );
}

//Piledriver Fall Speed Reset
if state != PS_ATTACK_AIR || attack != AT_USPECIAL_2{
    max_fall = 9;
}

// Horizontal Directional Indicator
if left_down == true && right_down == false{
    if spr_dir == 1{
        stick_horizontal = -1;
    }
    if spr_dir == -1{
        stick_horizontal = 1;
    }
}

if left_down == false && right_down == true{
    if spr_dir == 1{
        stick_horizontal = 1;
    }
    if spr_dir == -1{
        stick_horizontal = -1;
    }
}

if (left_down == false && right_down == false) || (left_down == true && right_down == true){
    stick_horizontal = 0;
}

if (instance_exists(bike)){
    if (place_meeting(x, y, bike)) && (x > bike.x-36 && x < bike.x+36) && (free == false){
        in_bike_range = true;
        bike_health = bike.health;
    } else in_bike_range = false;
} else in_bike_range = false;

//FSpecial will be locked if the bike is out
if (instance_exists(bike) && !in_bike_range){
    move_cooldown[AT_FSPECIAL] = 180;
}
if (instance_exists(bike) && in_bike_range){
    move_cooldown[AT_FSPECIAL] = 0;
}


//Bike Going Shenanigans
if instance_exists(bike){
	
	if abs(hsp) < 6{
		
		set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 301);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		
	}
	
	if abs(hsp) >= 6 && abs(hsp) <= 9{
		
		set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 6);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
	}
	
	if abs(hsp) > 9{
		
		set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
	}
	
}

//One Bike at a Time

with (obj_article1){
	if player_id.bike != self.id{
		should_die = true;
	}
}

//DSPECIAL BUG FIX ONCE AND FOR ALL!!!

if state != PS_ATTACK_GROUND || state != PS_ATTACK_GROUND || attack != AT_DSPECIAL_2{
	set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
}

// update afterimage array

if (get_gameplay_time() mod 4 == 0) && ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && ((attack == AT_FSTRONG && window > 1 && window < 4) || (attack == AT_DSPECIAL_2 && window == 3) || (attack == AT_EXTRA_1) || (attack == 49 && window >= 2)))
afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:afterimage_colour, timer:0, timerMax:16};


var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;