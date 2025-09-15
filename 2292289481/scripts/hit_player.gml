// Webbed moves
if  (
    //(my_hitboxID.attack == AT_JAB && (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7)) ||
    (my_hitboxID.attack == AT_NSPECIAL && window == 4) ||
    (my_hitboxID.attack == AT_FSTRONG && window == 3) ||
    (my_hitboxID.attack == AT_FSPECIAL && window == 4)
    ) 
    {
    hit_player_obj.poisoned = true;
    hit_player_obj.poisoned_id = id;
    hit_player_obj.poisoned_timer = 800;
    poisoned_opponent = hit_player_obj;
}

if  (
        (
            (my_hitboxID.attack == AT_JAB &&
            (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7))
        ||
            ((my_hitboxID.attack == AT_DSPECIAL ||
            my_hitboxID.attack == AT_USPECIAL ||
            my_hitboxID.attack == AT_USPECIAL_GROUND) &&
            my_hitboxID.hbox_num == 1)
        )
        && (hit_player_obj.poisoned || minion_poisoned)
        && hit_player_obj != id
    ) {
    webbed_opponent = hit_player_obj;
    hit_player_obj.webbed = true;
    hit_player_obj.webbed_id = id;
    //print(webbed_opponent);
    hit_player_obj.poisoned_timer = 0;
    init_shader();
    hit_player_obj.poisoned = false;
    minion_poisoned = false;
    create_hitbox(AT_JAB, 4, hit_player_obj.x, hit_player_obj.y)

//print(id);
//print(hit_player_obj);
    //opp_webbed = true;

    with (hit_player_obj) {
        //set_state(PS_HITSTUN);
       // sound_play(asset_get("sfx_may_wrap2"), false, noone, 1, 1);
        //sound_play(asset_get("sfx_leafy_hit3"), false, noone, 1, 1);
        //sound_play(asset_get("sfx_syl_dstrong"), false, noone, 1, 1.1);
        //sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
    }
}

// Hit webbed player
if hit_player_obj.webbed && hit_player_obj.webbed_timer > 1 && hit_player_obj.webbed_id == id {
    sound_play(asset_get("sfx_may_wrap2"), false, noone, 1, 1);
    sound_play(asset_get("sfx_leafy_hit3"), false, noone, 1, 1);
    sound_play(asset_get("sfx_syl_dstrong"), false, noone, 1, 1.1);
    hit_player_obj.orig_knock += 2;
    hit_player_obj.webbed = false;
}

// Fspecial && Nspecial command grabs
if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_NSPECIAL) && window == 2 && grabbedid == noone) {
    hit_player_obj.grabbed = 1;
    grabbedid = hit_player_obj;
    grabbedid.ungrab = 0;
}

#define opp_hitstun
return (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND);