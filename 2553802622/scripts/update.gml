/*Control variables in real time for example the crouching and wavelanding on
in the following script
-|| means to check another state that will do that same thing as well. 
-The state of the player means what condition such as crouching or respawn.
-char_height means to adjust the percentage and name on top of the player.
-"if" means a condition is met.
-"else" means if the condition is not met then do another thing.
- Semi colons are a good practice for coding.
- Brackets are used for isolating variables and states.
*/
#region Char_Height
if ((state == PS_CROUCH || state == PS_WAVELAND && state_timer >= .5)) {
    char_height = 42;
} else {
    char_height = 58;
}

if (attack == AT_TAUNT && window == 3) {
    char_height = 80;
} else {    
    char_height = 58;
        
    if (attack == AT_TAUNT && window == 2) {
        char_height = 100;
    } else {
        char_height = 58;

        if (attack == AT_TAUNT && window == 1) {
            char_height = 100;
        }   else {
            char_height = 58;
        }   
    }    
}

if (state == PS_HITSTUN) {
    char_height = 46
}

if (state == PS_AIR_DODGE) {
    char_height = 54;
} 
if (state == PS_IDLE) {
    char_height = 54;
}
if (state == PS_FIRST_JUMP) {  
    char_height = 65
}
if (state == PS_IDLE_AIR) {
    char_height = 70
}

if (state == PS_DOUBLE_JUMP) {
    char_height = 65
}
if (state == PS_WALL_JUMP) {
    char_height = 70
}
if (state == PS_PARRY) {
    char_height = 58
}
if (state == PS_PARRY_START) {
    char_height = 58
}

#endregion
plat_anim_speed += 0.1;

//Arrows recharge.
for(i = 1; i < 5; i++)
{
    if(arrowsremain[i] < arrowsmax[i])
        arrowscharge[i] ++;
    else
       arrowscharge[i] = 0;
}

if(arrowscharge[1] >= 60*5)
{
    arrowsremain[1] ++;
    arrowscharge[1] = 0;
    arrow_charged = 1;
}
if(arrowscharge[2] >= 60*7)
{
    arrowsremain[2] ++;
    arrowscharge[2] = 0;
    arrow_charged = 2;
}
if(arrowscharge[3] >= 60*7)
{
    arrowsremain[3] ++;
    arrowscharge[3] = 0;
    arrow_charged = 3;
}
if(arrowscharge[4] >= 60*10)
{
    arrowsremain[4] ++;
    arrowscharge[4] = 0;
    arrow_charged = 4;
}
if(arrow_charged != 0)
{
    switch(arrow_charged)
    {
        case 1:
            outline_color = [200,0,0];
            break;
        case 2:
            outline_color = [200,200,0];
            break;
        case 3:
            outline_color = [0,0,200];
            break;
        case 4:
            outline_color = [100,100,0];
            break;
    }
    color_timer ++;
    if(color_timer > 8)
    {
        outline_color = [0,0,0]; // reset color
        color_timer = 0;
        arrow_charged = 0;
    }
    init_shader();
}
//Slip on Ice
with(pHitBox)
{
    if(attack == AT_NSPECIAL && hbox_num == 2)
    {
        if(place_meeting(x,y,other) && player == other.player)
            other.iceslip = 0;
    }
}

//Select Timer
if(select_timer != 0)
{
    if(state == PS_HITSTUN || state == PS_ATTACK_AIR)
        select_timer = 0;
    
    if(select_timer == 20)
        clear_button_buffer(PC_TAUNT_PRESSED);

    if(taunt_pressed && select_timer < 19)
    {
        select_timer = 20;
        select_cur ++;
        if(select_cur >= 5)
            select_cur = 0;
    }

    if(!taunt_down)
    {
        select_timer --;
        if(left_pressed || right_pressed)
            select_timer = 0;
    }
    else
    {
        if(up_pressed || up_strong_pressed)
            select_cur = 1;
        if(right_pressed || right_strong_pressed)
            select_cur = 2;
        if(down_pressed || down_strong_pressed)
            select_cur = 3;
        if(left_pressed || left_strong_pressed)
            select_cur = 4; 
        if(shield_pressed)
        {
            select_timer = 0;
            select_cur = 0;
        }
    }

    if(select_cur != selection)
    {
        selection = select_cur;
        sound_play(asset_get("sfx_gem_collect"));
    }
}
else //when out of selection
{
    if(power_color != select_cur)
    {
        sound_play(asset_get("mfx_levelup"));
        power_color = select_cur; 
        white_flash_timer = 10;
        if(power_color != 0 && select_timer == 0)
            select_cooldown = 20;
        hudstrip_mode = 1;
        hudstrip_timer = 0;
        init_shader();
    }

    if(taunt_pressed && free && state_cat == SC_AIR_NEUTRAL && select_cooldown == 0)
        select_timer = 10;

    //arrow shooty
    switch(power_color)
    {
        case 0:
            arrowsfx = sound_get("arrowshot");
            knockback_adj = 1.0;
            walk_speed = 2.5;
            dash_speed = 7.5;
            ground_friction = .8;
            air_friction = .02;
            break;
        case 1:
            arrowsfx = asset_get("sfx_boss_fireball");
            knockback_adj = 1.05;
            walk_speed = 2.5;
            dash_speed = 7.5;
            ground_friction = .8;
            air_friction = .02;
            break;
        case 2:
            arrowsfx = sound_get("electricshot");
            knockback_adj = 1.1;
            walk_speed = 3.5;
            dash_speed = 9;
            ground_friction = .7;
            air_friction = .01;
            break;
        case 3:
            arrowsfx = asset_get("sfx_ice_shatter");
            knockback_adj = 1.05;
            walk_speed = 2.5;
            dash_speed = 7.5;
            ground_friction = .7;
            air_friction = .02;
            break;
        case 4:
            arrowsfx = asset_get("sfx_kragg_spike");
            knockback_adj = 0.95;
            walk_speed = 1.5;
            dash_speed = 5;
            ground_friction = 1;
            air_friction = .04;
            break;
    }
}

if(select_cooldown != 0)
{
    move_cooldown[AT_TAUNT] = 5;
    select_cooldown --;
}

if(initial_invince != 0)
{
    if(attack == AT_TAUNT)
        attack = 0;
}

if(fspec_reset)
    move_cooldown[AT_FSPECIAL] = 2;

if(!free || state == (PS_WALL_JUMP || PS_HITSTUN)) // has landed
{
    has_zss = false;
    has_flown = false;
    fspec_reset = false;
    nspec_stall = false;
    set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
    reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
}
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND)
{
    for(i = 0; i<30; i++)
    {
        arrowchainx[i] = 0; 
        arrowchainy[i] = 0; 
    }
    sound_stop(sound_get("elriosuspecial-02"));
}

if(arrowsremain[power_color] == 0)
    arrowsfx = sound_get("arrowshot");

set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, arrowsfx);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, arrowsfx);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, arrowsfx);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, arrowsfx);

//Recover moves please
if(has_zss)
    move_cooldown[AT_DSPECIAL] = 999;
else
    move_cooldown[AT_DSPECIAL] = 0;

if(hit_id != noone)
{
    if(hit_id.hitstop == 0)
        hit_id = noone;
}

if(iceslip >= 4)
{}
else
{  
    ground_friction = 0;
    iceslip ++;
}

//TUTORIAL MODE
if(variable_instance_exists(id,"bTut_mssn_mode") && bTut_mssn_mode) //Checks if mission mode is on!
{
    switch(bTut_mssn) //checks what mission youre on
    {
        //F-Special
        case 0:
            with(oPlayer) { bTut_mssn_cmbo = false; } //If just showing off mechanics put this!
            bTut_mssn_cmbo_moves[0] = "F-Special (Hit Opponent)";
            bTut_mssn_cmbo_moves[1] = "> Pull (Hold nothing)";
            bTut_mssn_cmbo_moves[2] = "F-Special (Hit Anything)";
            bTut_mssn_cmbo_moves[3] = "> Fly towards (Hold Special)";
            bTut_mssn_cmbo_moves[4] = "F-Special (Hit Anything)";
            bTut_mssn_cmbo_moves[5] = "> Jump (Hold Jump)";
            
            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0:	
                case 2:	
                case 4:	
                    if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 5)
                        missionNext();  break;
                case 1:	
                    if(state == PS_IDLE || state == PS_IDLE_AIR) bTut_mssn_part --;
                    if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 6)
                    { missionNext();} break;
                case 3:	
                    if(state == PS_IDLE || state == PS_IDLE_AIR) bTut_mssn_part --;
                    if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 7)
                    { missionNext();} break;
                case 5:	
                    if(state == PS_IDLE || state == PS_IDLE_AIR) bTut_mssn_part --;
                    if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window == 8)
                    { missionNext();} break;
            }
            break;
        
        //Jab to Down-Tilt
        case 1:
            with(oPlayer) { bTut_mssn_cmbo = false; } //If just showing off mechanics put this!
            bTut_mssn_cmbo_moves[0] = "N-Special";
            bTut_mssn_cmbo_moves[1] = "Change Element into Fire (Taunt)";
            bTut_mssn_cmbo_moves[2] = "N-Special (burns Opponents)";
            bTut_mssn_cmbo_moves[3] = "Change Element into Electricity (Taunt)";
            bTut_mssn_cmbo_moves[4] = "N-Special (Shocks Opponents)";
            bTut_mssn_cmbo_moves[5] = "Change Element into Ice (Taunt)";
            bTut_mssn_cmbo_moves[6] = "N-Special / D-Air (Create Ice Floor)";
            bTut_mssn_cmbo_moves[7] = "Change Element into Rock (Taunt)";
            bTut_mssn_cmbo_moves[8] = "N-Special (Causes Spikes)";
            
            select_cooldown = 0;
            for(arws = 1; arws<5; arws++)
                arrowsremain[arws] = arrowsmax[arws];

            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0:	
                    with(pHitBox) if(attack == AT_NSPECIAL && orig_player == other.player && has_hit) other.missionNext(); break;
                case 1: if(power_color == 1) { missionNext(); } break;
                case 2:	
                    with(pHitBox) if(attack == AT_NSPECIAL && other.power_color == 1 && orig_player == other.player && has_hit) other.missionNext(); break;
                case 3: if(power_color == 2) { missionNext(); } break;
                case 4:	
                    with(pHitBox) if(attack == AT_NSPECIAL && other.power_color == 2 && orig_player == other.player && has_hit) other.missionNext(); break;
                case 5: if(power_color == 3) { missionNext(); } break;
                case 6:	
                    with(pHitBox) if(attack == AT_NSPECIAL && hbox_num == 2 && orig_player == other.player) {other.missionNext(); other.bTut_mssn_reset = true; } break;
                case 7: if(state == PS_IDLE) bTut_mssn_reset = false; if(power_color == 4) { missionNext(); } break;
                case 8:	
                    with(pHitBox) if(attack == AT_NSPECIAL && other.power_color == 4 && orig_player == other.player && has_hit) other.missionNext(); break;
            }
            break;

        //F-Special
        case 2:
            with(oPlayer) { bTut_mssn_cmbo = false; } //If just showing off mechanics put this!
            bTut_mssn_cmbo_moves[0] = "D-Tilt";
            bTut_mssn_cmbo_moves[1] = "> Hold to extend!";
            bTut_mssn_cmbo_moves[2] = "U-Tilt";
            bTut_mssn_cmbo_moves[3] = "> Hold to extend!";
            
            if(bTut_mssn_part == 1 || bTut_mssn_part == 3)
            {
                if(state == PS_IDLE) bTut_mssn_part --;
            }

            switch(bTut_mssn_part) //This checks what the player is doing!
            {
                case 0:	if(attack == AT_DTILT && state == PS_ATTACK_GROUND && has_hit) missionNext(); break;
                case 1:	if(attack == AT_DTILT && window == 4 && window_timer > 1 && hitpause) missionNext();  break;
                case 2:	if(attack == AT_UTILT && window == 2 && has_hit) missionNext(); break;
                case 3:	if(attack == AT_UTILT && window == 5 && hitpause) missionNext();  break;
            }
            break;
    }
}

#define missionNext() //This lets the buddy know that you are going to the next part of the mission.
{
    if(!bTut_mssn_reset) //Prevents you from completing multiple tasks at the same time!
    {
        bTut_mssn_part++; 
        sound_play(asset_get("mfx_coin"));
        if(array_length(bTut_mssn_cmbo_moves) <= bTut_mssn_part)
            bTut_mssn_finish = true;
    }
}