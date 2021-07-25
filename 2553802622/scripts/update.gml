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
        if(up_pressed)
            select_cur = 1;
        if(right_pressed)
            select_cur = 2;
        if(down_pressed)
            select_cur = 3;
        if(left_pressed)
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
            select_cooldown = 60*5;
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
            ground_friction = 1.5;
            air_friction = .02;
            break;
        case 1:
            arrowsfx = asset_get("sfx_boss_fireball");
            knockback_adj = 1.05;
            walk_speed = 2.5;
            dash_speed = 7.5;
            ground_friction = 1.5;
            air_friction = .02;
            break;
        case 2:
            arrowsfx = sound_get("electricshot");
            knockback_adj = 1.1;
            walk_speed = 3.5;
            dash_speed = 9;
            ground_friction = 1.2;
            air_friction = .01;
            break;
        case 3:
            arrowsfx = asset_get("sfx_ice_shatter");
            knockback_adj = 1.05;
            walk_speed = 2.5;
            dash_speed = 7.5;
            ground_friction = 1.5;
            air_friction = .02;
            break;
        case 4:
            arrowsfx = asset_get("sfx_kragg_spike");
            knockback_adj = 0.95;
            walk_speed = 1.5;
            dash_speed = 5;
            ground_friction = 1.7;
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
    ground_friction = 1.5;
else
{  
    ground_friction = 0;
    iceslip ++;
}