//update

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
    if url == 1877715009{
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