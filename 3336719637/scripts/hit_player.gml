//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements

if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to tester work with hit_player

if get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_HITBOX_COLOR) || my_hitboxID.attack = AT_FSTRONG sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8);

switch (my_hitboxID.attack){
    case AT_NSPECIAL: //grab
        //slows down the final charge projectile on the first hit
        if my_hitboxID.hbox_num <= 2 my_grab_id = hit_player_obj;
        else my_grab_id = noone;
    break;
    case AT_FSPECIAL: //tether
        if my_hitboxID.hbox_num == 2 && window_timer < 15{
            fspec_found_target = true; //tells the game to move the character to the success window
            set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; //hbox_num 1 is the collision hitbox, it should let go of grabbed players
    break;
    case AT_DSPECIAL: //shotgun blast
        if my_hitboxID.hbox_num == 4{
            hit_player_obj.y -= 1;
            hit_player_obj.old_hsp = ((hit_player_obj.x - x / 5) + shotgun_level) * spr_dir;
            hit_player_obj.old_vsp = -5;
        }
    break;
}

#define set_grab_id
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