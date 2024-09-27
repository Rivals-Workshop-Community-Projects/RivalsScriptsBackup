//#region Local Variables
if (my_hitboxID.orig_player_id != self) exit;
//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && ("multihit_amount" in self) && multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;
            proj_hit_count ++; //increment hit count when the timer reaches 0

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
    		hitbox_hitstop = (other.hit_player_obj == other.id) ?  multihit_hit_player.hitstop / 2 :  multihit_hit_player.hitstop;
            if (hitbox_timer >= length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);
            
            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
        	in_hitpause = false
            multihit_hit_player = noone;
        }
    }
}
//#endregion

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 3) {
    has_hit_player = false;
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4) {
    if ("tomoko_played_splort" not in my_hitboxID) {
	    sound_play(sound_get("sfx_splort"));
	    my_hitboxID.tomoko_played_splort = true;
    }
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) {
	if ("follower_owner" in my_hitboxID) {
	    hit_player_obj.y -= 16;
	    hitstop = hit_player_obj.hitstop;
	    hitstop_full = hit_player_obj.hitstop;
	    hitpause = true;
	}
	has_hit_player = true;
	hit_player_obj.hitstun_full *= hit_player_obj.free ? 1 : 0.25;
	hit_player_obj.hitstun = hit_player_obj.hitstun_full;
}

if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1) {
   angle_autolink(116, -32, 10)
}

//Make sure tomoko's icewall is ignored if it connects with a player
if ("tomoko_ignore_icewall" not in my_hitboxID) {
	my_hitboxID.tomoko_ignore_icewall = true;
}

//#region hit player sfx
switch (my_hitboxID.attack) {
    case AT_DTILT:
	    if my_hitboxID.hbox_num == 2 {
			sound_play(sound_get("sfx_delta_hit_medium"), false, noone, 0.7, 1.1);
	    }
    break;
    case AT_FSTRONG:
	    if my_hitboxID.hbox_num == 2 {
			sound_play(sound_get("sfx_delta_hit_big"), false, noone, 0.7, 1);
	    }
    break;
    case AT_USTRONG:
	    if my_hitboxID.hbox_num == weapon_hitbox_max[AT_USTRONG] {
			sound_play(sound_get("sfx_delta_hit_big"), false, noone, 0.7, 1.2);
	    }
    break;
    case AT_DSTRONG:
	    if my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 {
			sound_play(sound_get("sfx_delta_hit_big"), false, noone, 0.7, 1.1);
	    }
    case AT_FAIR:
	    if my_hitboxID.hbox_num == 4 {
			sound_play(sound_get("sfx_delta_hit_big"), false, noone, 0.6, 1.1);
	    }
    break;
    case AT_BAIR:
	    if my_hitboxID.hbox_num == 5 {
			sound_play(sound_get("sfx_delta_hit_big"), false, noone, 0.6, 1.05);
	    }
    break;
    case AT_UAIR:
	    if my_hitboxID.hbox_num == 1 {
			sound_play(sound_get("sfx_delta_hit_medium"), false, noone, 0.6, 1.2);
	    }
    break;
    case AT_DAIR:
	    if my_hitboxID.hbox_num == 2 {
			sound_play(sound_get("sfx_delta_hit_medium"), false, noone, 0.6, 1.2);
	    }
    break;
}
//#endregion

#define angle_autolink(_x, _y, _speed)
if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled && my_hitboxID.force_flinch == 2) {
    hit_player_obj.orig_knock = min(point_distance(hit_player_obj.x, hit_player_obj.y, x + _x * spr_dir,  y + _y) / _speed, 8);
    hit_player_obj.knock_dir = point_direction(hit_player_obj.x, hit_player_obj.y,  x + _x * spr_dir,  y + _y);
    hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
    hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
}

#define set_grab_id()
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}