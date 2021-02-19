switch(player_id.player)
{
    case 1: draw_sprite(sprite_get("player_number"),0,x,y-54);break;
    case 2: draw_sprite(sprite_get("player_number"),1,x,y-54);break;
    case 3: draw_sprite(sprite_get("player_number"),2,x,y-54);break;
    case 4: draw_sprite(sprite_get("player_number"),3,x,y-54);break;
}
if state == 0
{
    draw_sprite_ext(sprite_get("flowertheflowey"),0,x,y,image_xscale*spr_dir,1,rot_speed,c_white,1);
}