var wiggleX = lengthdir_x(wigDst,wigDir);
var wiggleY = lengthdir_x(wigDst/5,wigDir);
wigDir += wigSpd;

var mx = lengthdir_x(spd,dir);
var my = lengthdir_y(spd,dir);

x += mx+wiggleX;
y += my+wiggleY;

//sprite change
/*if type == 0
{
    var touching = false;
    for(var i=0; i<instance_number(obj_article1); i++)
    {
        var s = instance_find(obj_article1,i);
        if s.player_id == player_id && s.type == 0
        {
            var w = sprite_get_width(sprite_get("smokeback"))/2;
            var h = sprite_get_height(sprite_get("smokeback"))/2;
            if collision_rectangle(x-w,y-h,x+w,y+h,s,true,1)
                touching = true;
        }
    }
    
    //change the sprite based on collisions with other smokes
    if touching
    {
        sprite_index = sprite_get("smoke");
        top.visible = true;
        back.visible = true;
        mask_index = sprite_get("smokeback");
    }
    else
    {
        sprite_index = sprite_get("smokesolo");
        top.visible = false;
        back.visible = false;
        mask_index = sprite_get("smokesolo");
    }
}//*/

//master interactions
if type == 0
{
	if top != noone && instance_exists(top) && back != noone && instance_exists(back)
	{
		top.x = x;
		top.y = y;
		back.x = x;
		back.y = y
	}
	
	with(pHitBox)
	{
		//Check if we're the owner
		var isOwner = player;
		
		//check damage
		var dam = damage;
		
		//if we're touching
		var touched = place_meeting(x,y,other);
		
		//mal will always push the cloud. enemies will have to reach a certain damage threshhold
		if touched
		{
			if isOwner == other.player || dam < other.breakDamage
			{
				var angle = kb_angle;
				var flipper = hit_flipper;
				var kb = kb_value;
				
				//send at angle
				if flipper == 0 && player_id.attack != AT_BAIR &&
				player_id.attack != AT_FSTRONG && 
				player_id.attack != AT_USTRONG &&
				player_id.attack != AT_DSTRONG &&
				player_id.attack != AT_FAIR &&
				player_id.attack != AT_NSPECIAL &&
				player_id.attack != AT_DAIR 
				{
					if player_id.image_xscale < 0
						angle = -angle+180;
					kb *= other.kbMultiplier;
					other.spd = kb;
					other.dir = angle;
				}
				if flipper == 0 && player_id.attack == AT_BAIR
				{
					if player_id.image_xscale < 0
						angle = -angle+180;
					kb *= other.kbMultiplier*4;
					other.spd = kb;
					other.dir = angle;
				}
				
				if flipper == 0 && player_id.attack == AT_FSTRONG ||
				flipper == 0 && player_id.attack == AT_DSTRONG ||
				flipper == 0 && player_id.attack == AT_USTRONG ||
				flipper == 0 && player_id.attack == AT_NSPECIAL ||
				flipper == 0 && player_id.attack == AT_DAIR
				{
					if player_id.image_xscale < 0
						angle = -angle+180;
					kb *= other.kbMultiplier*3.5;
					other.spd = kb;
					other.dir = angle;
				}
				if flipper == 6 && player_id.attack == AT_FAIR
				{
					if player_id.image_xscale < 0
						angle = -angle+180;
					kb *= other.kbMultiplier*1;
					other.spd = kb;
					other.dir = angle;
				}
				
				if flipper == 4 && player_id.attack == AT_DSTRONG
				{
					if player_id.image_xscale < 0
						angle = -angle+180;
					kb *= other.kbMultiplier*3.5;
					other.spd = kb;
					other.dir = angle;
				}
				
				//send on relative
				else
				{
				
				}
			}
			
			else if !other.isShrinking
			{
				other.myLife = other.shrinkTime;
				other.isShrinking = true;
			}
		}
	}
}

spd = lerp(spd,0,drag);

//instantly destroy if we're out of bounds
if myLife > shrinkTime
{
	var sx = get_stage_data( SD_X_POS );
	var sy = get_stage_data( SD_Y_POS );
	var btop = get_stage_data( SD_TOP_BLASTZONE );
	var bbottom = get_stage_data( SD_BOTTOM_BLASTZONE );
	
	if y < sy-btop || y > sy+bbottom
	{
		myLife = shrinkTime;
	}
}

//Check if we're not the master
if type != 0
{
	//destroy ourselves if the master doesn't exist (or spawned improperly)
	if par == noone || !instance_exists(par)
		instance_destroy();
}

//if we're the master
else
{
	//deduct from the life
	if myLife > 0
		myLife--;
		
	if myLife == 0
	{
		if top != noone
			instance_destroy(top);
		if back != noone
			instance_destroy()
		instance_destroy();
	}
	else
	{
		//shrink
		if myLife < shrinkTime
		{
			isShrinking = true;
			image_xscale = myLife/shrinkTime;
			image_yscale = myLife/shrinkTime;
		}
		
		//grow
		else
		{
			if image_xscale < 1
			{
				image_xscale += growSpeed;
				image_yscale += growSpeed;
				
			}
			else
			{
				image_xscale = 1;
				image_yscale = 1;
			}
		}
		top.image_xscale = image_xscale;
		top.image_yscale = image_yscale;
		back.image_xscale = image_xscale;
		back.image_yscale = image_yscale;
	}
}

/* Smoke collision is handled in update!*/