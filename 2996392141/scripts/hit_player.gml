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
	hit_player_obj.orig_knock = point_distance(0, 0, hsp, vsp);
}

if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1) {
	hit_player_obj.orig_knock = point_distance(0, 0, hsp, vsp);
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

//if !(my_hitboxID.attack == AT_NSPECIAL &&  my_hitboxID.hbox_num == 1) {
	if ("damage_original" in my_hitboxID)
	    tension_add(ceil(my_hitboxID.damage_original * TENSION_ADD_RATIO));
	else
	    tension_add(ceil(my_hitboxID.damage * TENSION_ADD_RATIO));
//}

#define tension_add(_change)
tension_amount += _change;
tension_amount = clamp(tension_amount, 0, TENSION_MAX);