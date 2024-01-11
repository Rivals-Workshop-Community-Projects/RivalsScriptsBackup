//update
if (!free || (free && (state = PS_HITSTUN))){
    move_cooldown[AT_DSPECIAL] = 0;
}
if (!free || (free && (state = PS_WALL_JUMP || state = PS_WALL_TECH || state = PS_HITSTUN))){
    grov_fspecial_airuse = false;
    move_cooldown[AT_USPECIAL] = 0;
}
if grov_fspecial_cooldown > 0 grov_fspecial_cooldown--;
if has_rune("H") grov_fspecial_airuse = false;
if grov_fspecial_cooldown == 0 && grov_fspecial_airuse == false move_cooldown[AT_FSPECIAL] = 0;
else                                                            move_cooldown[AT_FSPECIAL] = 10;

if state == PS_PRATFALL can_fast_fall = true;

// Resets/lowers emera shard timer.
with(oPlayer){
    if (state==PS_LAND || state==PS_LANDING_LAG || (state==PS_PRATLAND && prev_state==PS_PRATFALL)) && state_timer==0 && !hitpause grov_emera_land = true; //Set landing
    else grov_emera_land = false; //Reset landing
    if grov_emeratimer > 0 && !hitpause{
        if free || hsp == 0 grov_emeratimer = 0;
        else grov_emeratimer -= abs(hsp);
    }
    if grov_emeratimer < 0 grov_emeratimer = 0;
}
// Blue leaf
if get_gameplay_time() == 1 && shield_down && get_player_color(player) == 0{
    grov_gen3 = true;
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
        //in the attack_values
        set_attack_value(AT_EXTRA_3,AG_NUM_WINDOWS,3);
        set_attack_value(AT_EXTRA_3,AG_CATEGORY,2);
        set_attack_value(AT_EXTRA_3,AG_HURTBOX_SPRITE,asset_get("hurtbox"));
        
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_TYPE,1);
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_LENGTH,10);
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_ANIM_FRAMES,3);
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_HAS_SFX,1);
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_SFX,asset_get("sfx_coin_collect"));
        set_window_value(AT_EXTRA_3,1,AG_WINDOW_SFX_FRAME,8);
        
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_TYPE,1);
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_LENGTH,25);
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAMES,1);
        set_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAME_START,3);
        
        set_window_value(AT_EXTRA_3,3,AG_WINDOW_TYPE,1);
        set_window_value(AT_EXTRA_3,3,AG_WINDOW_LENGTH,6);
        set_window_value(AT_EXTRA_3,3,AG_WINDOW_ANIM_FRAMES,1);
        set_window_value(AT_EXTRA_3,3,AG_WINDOW_ANIM_FRAME_START,4);
        //Important. Puts Amber in startup hug state (2).
        //Editing this variable not recommended
        amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}