//hit_player.gml

/*
if my_hitboxID.attack == AT_FTILT or my_hitboxID.attack == AT_BAIR {
    old_bair_hsp = hsp;
    old_bair_vsp = vsp;
    print(hit_player_obj.hitstop_full);
    hitstop_full = hit_player_obj.hitstop_full+1;
    hitstop = hitstop_full;
    print(hitstop);
}*/

if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2 {
    old_vsp = -1.5;
}


//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && multihit_amount > 0)
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
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}

// The COMMAND GRAB Code
// By Wabungus!

// Detection for hitboxes
print_debug(grabCanPlayer);
// Gets info from grabbed player
if (grabCanPlayer == true && hit_player_obj.grabObjectType == 1 && grabId == 0 && attack == my_hitboxID.attack) {
    
    // Check for armor variants (won't run grab if they have armor)
    if (hit_player_obj.super_armor == false && (hit_player_obj.soft_armor == 0 || hit_player_obj.soft_armor < orig_knock) && (hit_player_obj.attack_invince != 2 || my_hitboxID.type != 2)) {
        
        // Grabbed Player's Id (long number attached to the player)
        grabId = hit_player_obj.id;
        
        // Starting positions for grab movement
        grabStartX = hit_player_obj.x;
        grabStartY = hit_player_obj.y;
        
        // Opponent's damage at start of grab (used for falling out early)
        grabOpponetDamage = get_player_damage( hit_player_obj.player );
        
        // Values stored from grabbing hitbox (used if player should somehow fall out of the grab early)
        grabKnockbackScaling = my_hitboxID.kb_scale;
        grabHitBoxDamage = my_hitboxID.damage;
        GrabKnockback = my_hitboxID.kb_value;
        GrabLaunchAngle = get_hitbox_angle( my_hitboxID );
        
        // Prevents grab from making the screen purple
        hit_player_obj.should_make_shockwave = false;
        
    }
    
}

#define set_grab_id
{
    if (my_grab_id == noone && !hit_player_obj.clone && hit_player_obj.state_cat == SC_HITSTUN && !hit_player_obj.bubbled) my_grab_id = hit_player_obj;
}