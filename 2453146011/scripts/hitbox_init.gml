//hitbox_init
canPlacePortal = false;
is_portal_1 = true;


// Rotate
if(player_id.throw_dir == "up" || player_id.throw_dir == "down")
{
	proj_angle = spr_dir == 1 ? 270 : 90;
	
	//x-=floor(player_id.hsp*1.1);
}
else
{

	//y-=floor((player_id.vsp*1.15-10));
}

in_portal = false;
teleported = false;
last_pcolor = 0;
portal_timer = 2;
portal_cooldown = 0;
portal_afterimage = {x:x,y:y,sprite_index:sprite_index,image_index:image_index,timer:0};