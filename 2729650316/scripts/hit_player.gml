crowdVictim = hit_player_obj;

if(my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num != 1)
{
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*30),0.5)
    hit_player_obj.y = lerp(hit_player_obj.y,y+10,0.5)
    crowdHype ++;
    smashed_player = hit_player_obj;
    smashed_player.sent_down = true;
}
if(my_hitboxID.attack == AT_FSPECIAL_AIR)
{
    old_vsp = -8;
    window = 3;
    window_timer = 0;
    crowdHype ++;
    hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir*30),0.5)
    hit_player_obj.y = lerp(hit_player_obj.y,y+15,0.5)
    smashed_player = hit_player_obj;
    smashed_player.sent_down = true;
}
if(my_hitboxID.attack == AT_NSPECIAL)
{
    my_hitboxID.hsp = -1*spr_dir;
    my_hitboxID.vsp = -5;
    crowdHype ++;
}
if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 2)
{
    hit_player_obj.x = lerp(hit_player_obj.x,x+20*spr_dir,0.5)
    hit_player_obj.y = lerp(hit_player_obj.y,y,0.5)
    attack_end();
    set_attack(AT_FSPECIAL_2);
}

if(my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1 && specEnhanced)
{
    specEnhanced = false;
    crowdHype ++;
}
//CommandGrabs
if ((my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG) && my_hitboxID.hbox_num == 1) {

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
        if(attack == AT_USTRONG)
        {  
            hit_player_obj.x = lerp(hit_player_obj.x,x,0.5)
            hit_player_obj.y = lerp(hit_player_obj.y,y-80,0.5)
            draw_y = 30;
            y -= 30;
            window = 4;
            window_timer = 0;
            set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
        }
        if(attack == AT_FSTRONG)
        {  
            hit_player_obj.x = lerp(hit_player_obj.x,x+40*spr_dir,0.5)
            hit_player_obj.y = lerp(hit_player_obj.y,y-10,0.5)
            set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
        }
        if(attack == AT_DSTRONG)
        {  
            hit_player_obj.x = lerp(hit_player_obj.x,x+20*spr_dir,0.5)
            hit_player_obj.y = lerp(hit_player_obj.y,y-5,0.5)
            set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
            window = 3;
            window_timer = 5;
        }
		
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) 
            grabbed_player_obj = hit_player_obj; 
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}
if(my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 2)
{
    sound_play(asset_get("sfx_boss_fireball_land"),false,noone,1,1.4);
    if(get_player_damage(hit_player_obj.player) > 70)
        sound_play(sound_get("crowd_cheer"), false, noone, 1, 1)
    hit_player_obj.x = lerp(hit_player_obj.x,x+20*spr_dir,1)
    hit_player_obj.y = lerp(hit_player_obj.y,y,1)
    crowdHype ++;
}
if(my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2)
{
    sound_play(sound_get("crunch"),false, noone, 0.6, 1.1);
    sound_play(asset_get("sfx_boss_fireball_land"),false,noone,2,1.2);
    if(get_player_damage(hit_player_obj.player) > 70)
        sound_play(sound_get("crowd_cheer"), false, noone, 1, 1)
    shake_camera( 20, 10)
    hit_player_obj.x = lerp(hit_player_obj.x,x,1)
    hit_player_obj.y = lerp(hit_player_obj.y,y-40,1)
    smashed_player = hit_player_obj;
    smashed_player.sent_down = true;
    crowdHype ++;
}
if(my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2)
{
    sound_play(asset_get("sfx_boss_fireball_land"),false,noone,2,1.5);
    if(get_player_damage(hit_player_obj.player) > 90)
        sound_play(sound_get("crowd_cheer"), false, noone, 1, 1)
    hit_player_obj.x = lerp(hit_player_obj.x,x,1)
    hit_player_obj.y = lerp(hit_player_obj.y,y-20,1)
    crowdHype ++;
}