// called when the character gets KO'd
fuckingdie = true;
invincible = false;

initial_dash_speed = 7;
dash_speed = 6.5;
walk_speed = 3.25;
walk_accel = 0.2;
leave_ground_max = 7.35;
air_accel = 0.35;

cd_sandwich = 0;
item_menu_active = false;
chosen_item = 0;
general_cooldown = 0;

sandwich_used = 0;
buff_active = false;
armor_active = false;
speedbuff_active = false;

tp_death_cd = 180;

if ustrong_char != noone
{
    timer = 0;
    ustrong_char = noone;   
}

if notinfuckinland = true
{
    notinfuckinland = false;
}


sound_play(sound_get("snd_break2"));
var stage_x = get_stage_data( SD_X_POS );
var stage_y = get_stage_data( SD_Y_POS );
if (x < stage_x)
{
    var particle1 = instance_create(x, y-32,"obj_article3"); 
    var particle2 = instance_create(x, y-0,"obj_article3"); 
    var particle3 = instance_create(x, y+32,"obj_article3"); 
    var particle4 = instance_create(x, y+64,"obj_article3"); 
    for (var i = 0; i < 5; i++) 
    {
        particle1.hsp = (5 + random_func_2( 2 * i, 6, true ) );
        particle2.hsp = (4 + random_func_2( 2 * i, 5, true ) );
        particle3.hsp = (5 + random_func_2( 2 * i, 7, true ) );
        particle4.hsp = (3 + random_func_2( 2 * i, 3, true ) );
    }
}
else if (x > stage_x)
{
    var particle1 = instance_create(x, y-32,"obj_article3"); 
    var particle2 = instance_create(x, y-0,"obj_article3"); 
    var particle3 = instance_create(x, y+32,"obj_article3"); 
    var particle4 = instance_create(x, y+64,"obj_article3"); 
    for (var i = 0; i < 5; i++) 
    {
        particle1.hsp = -1*(5 + random_func_2( 2 * i, 6, true ) );
        particle2.hsp = -1*(4 + random_func_2( 2 * i, 5, true ) );
        particle3.hsp = -1*(5 + random_func_2( 2 * i, 7, true ) );
        particle4.hsp = -1*(3 + random_func_2( 2 * i, 3, true ) );
    }    
}
if (y > stage_y)
{
    particle1.vsp += -5;
    particle2.vsp += -5;
    particle3.vsp += -5;
    particle4.vsp += -5;
}
else
{
    particle1.vsp += 5;
    particle2.vsp += 5;
    particle3.vsp += 5;
    particle4.vsp += 5;   
}