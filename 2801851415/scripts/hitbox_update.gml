/*         
*                 ---------- hitbox_update.gml ------------
*       This file runs every frame a hitbox is active.
*       Useful for making hitboxes do things you can't do from a normal attack file.
*
*       Example: This plays a sound every 8 frames the nair projectile is active.
*
       if(attack == AT_NAIR and hbox_num == 1){
               if(hitbox_timer%8 == 0){ // the % is the modulous operator, it leaves the remainder behdind after dividing by a number, 17%8 would be the remainder of 17 divided by 8 which is 1
                   sound_play(sound_get("tinythud"));
                }
        }
*
*/

if(attack == AT_NSPECIAL)
{
    if(hbox_num == 2)
    {
        through_platforms = 999;
        y -= sin((hitbox_timer+1)/5)*25;
        y += sin(hitbox_timer/5)*25;
        hsp = 6*spr_dir;
    }
    else
        hsp = clamp(hsp*1.2, -11, 11);
}
if(attack == AT_DSPECIAL)
{
    if(hbox_num == 2)
    {
        if((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.window == 1 || player_id.state == PS_RESPAWN)
            destroyed = true;
    }
}

if(attack == AT_DSPECIAL_2)
{
    proj_angle -= 20*spr_dir;
    if(!free) destroyed = true;
}
