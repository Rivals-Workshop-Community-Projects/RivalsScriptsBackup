// attack_update is a script called when you're doing an attack. It runs for every in-game frame.
//B - Reversals

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_NSPECIAL)
{
    move_cooldown[AT_NSPECIAL] = 60;
}
if (attack == AT_DSPECIAL)
{
    can_fast_fall = false;
    clear_button_buffer(PC_SPECIAL_PRESSED);
    if (window >= 2) && (!was_parried)
        {
            can_jump = true;
        }
}
if (attack == AT_USPECIAL) && (free)///Free means in the air
{
    up_b_used = true;
    can_wall_jump = true;
     if (window == 1)
     {
         vsp = -1;
     }
    if (window == 4)
     {
       move_cooldown[AT_USPECIAL] = 1;
     }
}
if (attack == AT_FSPECIAL) && (free)///Free means in the air
{
    side_b_used = true;
    can_wall_jump = true;
    if (window == 4)
     {
       move_cooldown[AT_FSPECIAL] = 1;
     }
}
if (attack == AT_FSPECIAL) && (window >= 2) && (!free)
{
   if (!was_parried)
   {
    set_state(PS_LANDING_LAG);
   }
}
if (attack == AT_FSPECIAL) && (window <= 3) && (window >= 1)
{
    timer_vfx++;
    if (timer_vfx == 4)
    {
        with (spawn_hit_fx(x-10,y-120,zigzap_vfx))
        {
            image_yscale = 1;
        }
        with (spawn_hit_fx(x-10,y+20,zigzap_vfx))
        {
            image_yscale = -1;
        }
        timer_vfx = 0;
    }
}
if (attack == AT_EXTRA_1) || (attack == AT_EXTRA_2)
{
    if (window == 2) && (window_timer = 2) && (attack == AT_EXTRA_1)
    {
        spawn_hit_fx(x,y,plus_wave_vfx);
        with (spawn_hit_fx(x,y,plus_wave_vfx))
            {
                image_yscale = -1;
            }
        shake_camera(30,26);
    }
    hsp = 0;
    vsp = 0;
}
if (meter >= 50)
    {
        plus_dmg = 2;
    }
if (attack == AT_FSTRONG) && (window == 2) && (plus_active)
{
    create_hitbox(AT_FSTRONG,2,x,y);
    meter -= 12;
}
if (attack == AT_DSTRONG) && (window == 2) && (plus_active)
{
    create_hitbox(AT_DSTRONG,3,x,y);
    create_hitbox(AT_DSTRONG,4,x,y);
    meter -= 12;
}
if (attack == AT_USTRONG) && (window == 2) && (plus_active)
{
    create_hitbox(AT_USTRONG,2,x,y);
    sound_play(sound_get("Electric"),false);
    meter -= 12;
}