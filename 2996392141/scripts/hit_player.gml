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

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);
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

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num <= 4) {
	angle_autolink(32, -32, 4)
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	hit_player_obj.orig_knock += point_distance(0, 0, hsp, vsp);
	hit_player_obj.orig_knock = min (hit_player_obj.orig_knock, 8)
	hit_player_obj.knock_dir = point_direction(x, (y - 32), my_hitboxID.x, my_hitboxID.y);
    hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
    hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
}

if (my_hitboxID.attack == AT_NSPECIAL && attack == AT_NSPECIAL_2 && is_attacking) {
	has_hit = true;
}
if (my_hitboxID.attack == AT_DSPECIAL && attack == AT_DSPECIAL && is_attacking) {
	has_hit = true;
}

if (my_hitboxID.attack == AT_DSPECIAL_AIR && attack == AT_DSPECIAL_AIR && is_attacking) {
	has_hit = true;
}

if (my_hitboxID.attack == 49 ) {
    if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
    else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
    
}


if (my_hitboxID.attack != 49 && my_hitboxID.player == player) {
	if ("damage_original" in my_hitboxID)
	    tension_add(ceil(my_hitboxID.damage_original * TENSION_ADD_RATIO));
	else
	    tension_add(ceil(my_hitboxID.damage * TENSION_ADD_RATIO));
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

#define angle_autolink(_x, _y, _speed)
if ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled && my_hitboxID.force_flinch == 2) {
    hit_player_obj.orig_knock = min(point_distance(hit_player_obj.x, hit_player_obj.y, x + _x * spr_dir,  y + _y) / _speed, 8);
    hit_player_obj.knock_dir = point_direction(hit_player_obj.x, hit_player_obj.y,  x + _x * spr_dir,  y + _y);
    hit_player_obj.old_hsp = lengthdir_x(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
    hit_player_obj.old_vsp = lengthdir_y(hit_player_obj.orig_knock, hit_player_obj.knock_dir);
}



#define tension_add(_change)
tension_amount += _change;
tension_amount = clamp(tension_amount, 0, TENSION_MAX);