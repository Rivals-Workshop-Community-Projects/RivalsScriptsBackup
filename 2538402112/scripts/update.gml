//update

// Reset shard stepping
with oPlayer{
    grov_emerashard = false
}

if (!free || (free && (state = PS_WALL_JUMP || state = PS_WALL_TECH || state = PS_HITSTUN))){
    move_cooldown[AT_USPECIAL] = 0
    move_cooldown[AT_DSPECIAL] = 0
    grov_fspecial_airuse = false
    grov_fspecial_cooldown = 0
}

if grov_fspecial_cooldown > 0 grov_fspecial_cooldown--

if has_rune("H") grov_fspecial_airuse = false

if grov_fspecial_cooldown == 0 && grov_fspecial_airuse == false move_cooldown[AT_FSPECIAL] = 0
else move_cooldown[AT_FSPECIAL] = 10

if state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND{
    grov_link_jump = false
}

if char_height != grov_char_height{
    if (attack != AT_NSPECIAL || ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))) char_height = grov_char_height
}

// Resets/lowers emera shard timer.
with(oPlayer){
    if grov_emeratimer > 0{
        if free || hsp == 0 grov_emeratimer = 0
        else grov_emeratimer -= abs(hsp)
    }
    if grov_emeratimer < 0 grov_emeratimer = 0
    // print(string(grov_emeratimer))
}



// Blue leaf
if get_gameplay_time() == 1 && shield_down && get_player_color(player) == 0{
    grov_gen3 = true
}

//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
    with (amber_herObj) //Access Amber's player object and set the values
    {
        //Set the window values for Amber's hugging. DO NOT change Amber's sprites
        //in the attack_values
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 25);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
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

// Hikaru test
with asset_get("oPlayer")
{
    if ((variable_instance_exists(id,"url")) && url == 1877715009){
        if grov_hikaru_tauntglow == 0 grov_hikaru_tauntglow = other.hikaru_gearglow
        if (counterid == other && aura && !beast_deity){
            if grov_hikaru == false{
                grov_hikaru = true
                theirAnim = other.hikaru_walkclone
                theirAnimSpeed = other.walk_anim_speed;
                transProj = true;
                
                abyssHime_deathspr = theirAnim;
                set_attack_value(AT_EXTRA_1, AG_SPRITE, other.hikaru_dairclone);
                set_attack_value(AT_TAUNT_2, AG_SPRITE, other.hikaru_tauntclone);
            }
        }
        else grov_hikaru = false
    }
}

// var other_name = ""
// print(other_name)
// Dialog Buddy
if(variable_instance_exists(id,"diag")){
    if other_name == null
        with oPlayer{
            if player != other.player{ other.other_name = get_char_info(player, INFO_STR_NAME) }
        }
    diagchoice = [
        "This is all for the Time Gear! Forgive me!",
        "I mean to have it, and I will get it! I need the Time Gear! Even if it means eliminating you, "+other_name+"!",
        // "I mean to have it, and I will get it! I need the Time Gear! Even if it means eliminating you, "+get_char_info(otherPlayer, INFO_STR_NAME)+"!",
        " So you'll fight. Then so be it.",
        " Gah! Even here... you chased me even here! You're tenacious, all right! You cling to me beyond expectation!"
        ]
    if(otherUrl == "2520247938" && diag != "2520247938") //Mario Head
    {
        diag = "I, uh, wha-";
    }
    // 3-Part dialogue
    if(variable_instance_exists(id,"url") && otherUrl == url) // Grovyle
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "What is the meaning of this! Why is there another me?!",
                "You took my alt, now P E R I S H.",
                "...I don't have time for this..."]
            }
            
        }
    }
    if( (otherUrl == CH_ORI && diag != CH_ORI) ) // Ori
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Get out of the way!",
                "...",
                "You refuse?! Then you leave me no choice!"]
            }
            
        }
    }
    if( (otherUrl == CH_SHOVEL_KNIGHT && diag != CH_SHOVEL_KNIGHT) ) // Shovel Knight
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; //This will decide which character will speak first! If it's the opponent use (otherPlayer) instead.
                diag_nrs = true; //Sets the 3-Part dialogue to happen.
                diag_nrs_diag = [
                "Get out of the way!",
                "...",
                "You refuse?! Then you leave me no choice!"]
            }
            
        }
    }
}