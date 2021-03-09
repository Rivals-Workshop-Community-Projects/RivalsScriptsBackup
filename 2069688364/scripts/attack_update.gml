// attack_update

//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if attack=AT_DSPECIAL
{
    if window=1 and window_timer>15
    {
        gas=0
    }
    if window=2 and window_timer>30
    {
        gas=maxgas
    }
}
if attack=AT_FSPECIAL
{
    if window_timer=1 and gas>0
    {
        vsp=-4
    }
}
/*
if attack=AT_DSTRONG// or attack=AT_USTRONG
{
    vsp=-8
}
*/
if attack=AT_NSPECIAL
{
    if !instance_exists(spear)
    {
        if window=2 and window_timer=1
        {
            spear=instance_create(x,y,"obj_article1")
            spear.spr_dir=spr_dir
            spear.hsp*=spr_dir
        }
    }
    else
    {
        if window=2 and window_timer=1
        {
            spear.explode=1
        }
    }
}

if attack=AT_NAIR
{
    if window=2
    {
        if !attack_down
        {
            if window_timer=nair_time
            {
                window=3
                window_timer=0
            }
        }
    }
    if !free
    {
        vsp=-jump_speed
        sound_play(asset_get("sfx_shovel_hit_heavy1"))
    }
}