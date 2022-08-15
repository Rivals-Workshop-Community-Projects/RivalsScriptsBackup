var atk  = my_hitboxID.attack
var hbox = my_hitboxID.hbox_num

if (my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num == 1) {
	old_vsp = -1;
}


	
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num == 2){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-90, .35);
    }
}
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num < 3){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-80, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+90*spr_dir, .35);
    }
}
//*
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_UAIR and my_hitboxID.hbox_num < 3){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-80, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x, .35);
    }
}
if(!hit_player_obj.super_armor and hit_player_obj.soft_armor == 0){
    if(my_hitboxID.attack == AT_FAIR and my_hitboxID.hbox_num < 3){
        //print("ora")
        hit_player_obj.y = lerp(floor(hit_player_obj.y), y-60, .35);
        hit_player_obj.x = lerp(floor(hit_player_obj.x), x+90*spr_dir, .35);
    }
}
if (my_hitboxID.attack == AT_USTRONG) 
{
    switch(my_hitboxID.hbox_num)
    {
    case 1:
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
        && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
            && was_parried == false
        && hit_player_obj.clone == false) {
            
            //transition to the 'throw' part of the attack.
            destroy_hitboxes();
            attack_end();
            set_attack_value(attack, AG_NUM_WINDOWS, 5);
            window = 4;
            window_timer = 0;

            //if this attack hasn't grabbed a player yet, grab the player we just hit.
            if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
            
            //if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
            else {
                var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
                var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
                if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
            }
        }
        hit_player_obj.y = floor(lerp(hit_player_obj.y, y-80, .5));
        hit_player_obj.spr_dir = -spr_dir;
        break;
    case 2:
        hit_player_obj.x = floor(lerp(hit_player_obj.x, x+10*spr_dir, .5));
        hit_player_obj.y = y
        break;
    }
}

//Freezing attacks
if(hit_player_obj.frostineFreeze)
{
    sound_play(asset_get("sfx_icehit_weak1"), 0, noone, 1, 1.5)
    if(my_hitboxID.type != 2)
        hitstop += 2;
    hit_player_obj.hitstop += 2;
    take_damage(hit_player_obj.player, player, ceil(get_hitbox_value(atk, hbox, HG_DAMAGE)*0.5));
    spawn_hit_fx(hit_player_obj.x,hit_player_obj.y-30, 29)
}
if(atk == AT_NSPECIAL && hbox == 2 || atk == AT_DSPECIAL_2 || atk == AT_DSPECIAL || atk == AT_FSPECIAL && hbox == 2 || atk == AT_USTRONG && hbox == 2) 
{
    if(!hit_player_obj.frostineFreeze)
    {
        sound_play(asset_get("sfx_infinidagger"), 0, noone, 2, 1)
        fx = spawn_hit_fx(hit_player_obj.x,floor(hit_player_obj.y-char_height/2), delta_fx);
        // fx.depth = depth - 99;
    }
    hit_player_obj.frostineTimerStart = get_gameplay_time();
    hit_player_obj.frostineFreeze = true;
} 
//gnome layering stuff
switch (atk) {
    case AT_FAIR: 
    if hbox == 3 {
        sound_play(asset_get("sfx_icehit_heavy1"), 0, noone, .9, 1)
    } else {
        sound_play(asset_get("sfx_icehit_weak1"), 0, noone, 1, 1.5)
    }
    break;
    case AT_NAIR: 
    	if hbox == 1 {
        sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, 1.2)
    	}
    break;
      case AT_DAIR: 
        sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .7, 1.2)
    break;
    case AT_DTILT: 
        //sound_play(asset_get("sfx_s"))
    break;
    case AT_BAIR: 
        sound_play(asset_get("sfx_icehit_heavy1"), 0, noone, 1, 1)
    break;
    case AT_FSPECIAL: 
        if hbox == 2 {
            sound_play(asset_get("sfx_infinidagger"), 0, noone, .7, 1)
        }
    break;
	case AT_FSPECIAL:
	case AT_USPECIAL:
        if(hbox == 1 || hbox == 2 || hbox == 3 ){
		    sound_play(asset_get("sfx_blow_heavy1"))}
		if hbox == 3 {
            sound_play(asset_get("sfx_infinidagger"), 0, noone, .7, 1)
        }
	break;
	case AT_FSTRONG:
		    sound_play(asset_get("sfx_blow_heavy1"))
	break;
}
