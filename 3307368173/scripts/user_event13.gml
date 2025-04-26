//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes sure that the hitboxes belong to us and not someone like kragg

true_dmg = my_hitboxID.damage * lerp(1, 1.6, strong_charge/60);

switch(my_hitboxID.attack)
{
    case AT_UAIR:
        if(my_hitboxID.hbox_num <= 2)
        {
            if (saro_frenzy < 3) saro_frenzy++;
            destroy_hitboxes();
            set_grab_id();
            my_grab_id.x = lerp(x+20*spr_dir, my_grab_id.x, 0.5);
            my_grab_id.y = lerp(y, my_grab_id.y, 0.5);
            my_grab_id.spr_dir = spr_dir * -1;
            set_attack_value(attack, AG_NUM_WINDOWS, 6);
            set_attack_value(attack, AG_CATEGORY, 2);
            set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
            djumps = 0;
        }
        else
        {
            my_grab_id.x = floor(lerp(x+50*spr_dir, my_grab_id.x, 0.5));
            my_grab_id.y = floor(lerp(y, my_grab_id.y, 0.5));
            my_grab_id.hurt_img = 3;
            my_grab_id = noone;
        }
        break;
    case AT_FSPECIAL:
        if(my_hitboxID.hbox_num == 1)
        {
            if (saro_frenzy < 3) saro_frenzy++;
            destroy_hitboxes();
            set_grab_id();
            my_grab_id.x = lerp(x+40*spr_dir, my_grab_id.x, 0.5);
            my_grab_id.y = lerp(y, my_grab_id.y, 0.5);
            my_grab_id.spr_dir = spr_dir * -1;
        }
        else
        {
            if(my_hitboxID.hbox_num == 2)
            {
                my_grab_id.x = lerp(x-40*spr_dir, my_grab_id.x, 0.5);
                my_grab_id.y = lerp(y-5, my_grab_id.y, 0.5);
            }
            my_grab_id = noone;
        }
        
        if (my_hitboxID.hbox_num == 5){
            sound_play(sound_get("newsfx_crush"), false, noone, 0.7, 1.2)
        }
        break;
    case AT_USPECIAL:
        if(my_hitboxID.hbox_num != 4 && !hit_player_obj.super_armor && hit_player_obj.soft_armor == 0)
        {
            hit_player_obj.x = lerp(hit_player_obj.x, x+40*spr_dir, 0.25);
            hit_player_obj.y = lerp(hit_player_obj.y, my_hitboxID.y-20, 0.25);
            hit_player_obj.spr_dir = spr_dir*-1;
        }
        break;
}

//jh sfx
switch(my_hitboxID.attack)
{
    case AT_JAB:
        if (my_hitboxID.hbox_num == 1){
            sound_play(asset_get("sfx_blow_medium1"), false, noone, 1);
        } else {
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 1);
        }
    break;
    case AT_FTILT:
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1);
    break;
    case AT_DTILT:
    case AT_UTILT:
    case AT_DATTACK:
    case AT_DSPECIAL:
    case AT_NSPECIAL:
        sound_play(asset_get("sfx_blow_medium3"), false, noone, 1);
    break;
    case AT_NAIR:
        if (my_hitboxID.hbox_num <= 1){
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 1);
        } else {
            sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1);
        }
    break;
    case AT_FAIR:
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1);
    break;
    case AT_DAIR:
        sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1);
    break;
    case AT_FSTRONG:
    case AT_USTRONG:
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1);
    break;
    case AT_USPECIAL:
        if (my_hitboxID.hbox_num <= 2){
            sound_play(asset_get("sfx_blow_medium1"), false, noone, 1);
        }
        if (my_hitboxID.hbox_num == 3){
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 1);
        }
        if (my_hitboxID.hbox_num == 4){
            sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1);
        }
    break;
}

with (my_hitboxID) if (type == 2)
{
    //psuedo melee hitbox hitpause
    if (psuedo_melee_hitbox)
    {
        with (other) //this "other" reffers to us, the player that's hitting
        {
            old_hsp = hsp; //set the speed values that should activate when exiting the move
            old_vsp = vsp;
            hitstop = get_hitstop_formula( //this formula is used to calculate how much hitpause we should get
                get_player_damage(hit_player_obj.player),
                other.damage,
                other.hitpause,
                other.hitpause_growth,
                0);
            hitstop_full = hitstop;
            hitpause = true; //we also need to manually set hitpause to true as it doesn't normally do this for projectiles
        }

        hitbox_hitstop = other.hitstop; //set the hitpause of the hitbox to the player's hitpause
        has_hit = other.has_hit; //set off the has_hit and has_hit_player flags, usually used for cancels
        has_hit_player = other.has_hit_player;
        in_hitpause = true; //the hitbox counterpart to the player's "hitpause" variable
    }

    //stop projectile homing if multihits start multihitting
    if (multihit_amount > 0 && homing_enabled) homing_enabled = false;

    ///////////////////////////////////////// MULTIHIT LOGIC /////////////////////////////////////////

    //if the multihit amount is more than 0 it should activate the multihit code
    if (multihit_amount > 0)
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

#define set_grab_id
{
    if (my_grab_id == noone && (hit_player_obj.object_index != oPlayer || (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)))
    {
        my_grab_id = hit_player_obj;
    }
}