//article1_update
ignores_walls = false;
switch (state)
{
case 0:
    x = player_id.x;
    y = player_id.y - 25;
	break;
case 2:
    if (player_id.attack != AT_USPECIAL
        || player_id.window != 1)
    {
		player_id.birdOut = true;
		state = 4;
		moving_timer = 20*(player_id.runeB?0.5:1);
    }
    if (state_timer == 0)
    {
        hsp = 0;
        vsp = 0;
    }
    var offset = 45;
    x = sin(degtorad(joy+90))*offset + player_id.x;
    y = cos(degtorad(joy+90))*offset + player_id.y - 25;
    spr_dir = player_id.spr_dir;
	break;
case 3:
	
	if (state_timer > 60 * 4)
	{
		ignores_walls = true;
	}

    angle = point_direction(x, y,  player_id.x, player_id.y - 25);
    
    //mult = 6;
    if(point_distance(player_id.x, player_id.y -34, x, y) > radius)
	{
        hsp = lengthdir_x(8, angle);
        vsp = lengthdir_y(8, angle);
    }
    else
	{
        hsp = lengthdir_x(6.5, angle);
        vsp = lengthdir_y(6.5, angle);
    }
    if(hit_wall || !free)
	{
        if(hsp > 0){ hsp = 8; }
        else if(hsp < 0){ hsp = -8; }
        if(vsp > 0){ vsp = 8; }
        else if(vsp < 0){ vsp = -8; }
    }
    
    if(x<player_id.x)spr_dir = 1;
    else if(x>player_id.x)spr_dir = -1;
    
    if( x<player_id.x + 10 && x>player_id.x - 10 &&  y<player_id.y - 15 && y>player_id.y - 35 )
	{
        state = 0;
		state_timer = 0;
        player_id.birdOut = false;
        angle = 0;
        //spd = 0;
        //speed = 0;
        vsp = 0;
        hsp = 0;
    }
	hsp *= (player_id.runeB?2:1);
	vsp *= (player_id.runeB?2:1);
	break;
case 4:
    var spd = (player_id.runeB?16:8);
    hsp = lengthdir_x(spd, joy);
    vsp = lengthdir_y(spd, joy);
    if(hsp>0)spr_dir = 1;
    else if(hsp<0)spr_dir = -1;
    moving_timer -= 1;
    if(moving_timer == 0)
	{
        state = 1;
        vsp = 0;
        hsp = 0;
		state_timer = 0;
    }
	break;
case 5:
    angle = point_direction(x, y,  player_id.hit_player_obj.x, player_id.hit_player_obj.y - 25);
    
    //mult = 6;
    if(point_distance(player_id.hit_player_obj.x, player_id.hit_player_obj.y -34, x, y) > 12)
	{
        hsp = lengthdir_x(6, angle);
        vsp = lengthdir_y(6, angle);
    }
    else
	{
        hsp = 0;
        vsp = 0;
		x = player_id.hit_player_obj.x;
		y = player_id.hit_player_obj.y -34;
    }
    
    if(hit_wall || !free)
	{
        if(hsp > 0){ hsp = 8; }
        else if(hsp < 0){ hsp = -8; }
        if(vsp > 0){ vsp = 8; }
        else if(vsp < 0){ vsp = -8; }
    }
    
    if(x<player_id.hit_player_obj.x)spr_dir = 1;
    else if(x>player_id.hit_player_obj.x)spr_dir = -1;

	hsp *= (player_id.runeB?2:1);
	vsp *= (player_id.runeB?2:1);
	break;
case 6:
    angle = player_id.joy_dir;
    
    //mult = 6;
    hsp = 0;
    vsp = 0;
	if (!player_id.joy_pad_idle)
	{
		hsp = lengthdir_x(6, angle);
		vsp = lengthdir_y(6, angle);
	}
    
    
    if(hit_wall || !free)
	{
        if(hsp > 0){ hsp = 8; }
        else if(hsp < 0){ hsp = -8; }
        if(vsp > 0){ vsp = 8; }
        else if(vsp < 0){ vsp = -8; }
    }
    
    if(hsp>0)spr_dir = 1;
    else if(hsp<0)spr_dir = -1;

	hsp *= (player_id.runeB?2:1);
	vsp *= (player_id.runeB?2:1);

	if (!player_id.special_down)
	{
		state = 1;
		hsp = 0;
		vsp = 0;
		state_timer = 0;
	}
    break;
case 7:
    if (state_timer == 0)
    {
        hsp = 0;
        vsp = 0;
        temp_x = x;
        temp_y = y;
    }
    if (state_timer < 60)
    {
        var offset = 10;
        x = temp_x - cos(state_timer/5)*offset+offset;
        y = temp_y + sin(state_timer/5)*offset+offset/2;
    }
    else
    {
        state = 1;
        state_timer = 0;
        x = temp_x;
        y = temp_y;
    }
	break;
default:
	break;
}

switch(state){
    case 0:
        new_sprite = sprite_get("article");
        animation_type = -1;
        break;
    case 1:
		new_sprite = sprite_get("bird_idle");
        animation_type = 0;
        break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        new_sprite = sprite_get("bird_fly");
        animation_type = 1;
        break;
	default:
		break;
}

switch(animation_type){
    case 0: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            ++image_index;
        }
        break;
    case 1: //Increment image_index at the rate determined by fly_anim_rate
        if (state_timer mod fly_anim_rate == 0){
            ++image_index;
        }
		break;
    default:
		break;
}

if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

++state_timer;