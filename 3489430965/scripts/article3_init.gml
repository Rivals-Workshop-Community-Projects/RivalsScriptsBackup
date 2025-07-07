sprite_index = sprite_get("nothing");
image_index = 0;
spr_dir = player_id.spr_dir;

timer = 0;
if(player_id.attack == AT_FSTRONG)
{
    variant = 0;
    
    mask_index = sprite_get("fstrong_cook");
    timer_total = 25;
}
else
{
    variant = 1;
    mask_index = sprite_get("dstrong_cook");
    timer_total = 28;
}

hitstop = 0;
hsp = 0;
vsp = 0;

can_be_grounded = false;
ignores_walls = true;
free = true;
hit_wall = false;