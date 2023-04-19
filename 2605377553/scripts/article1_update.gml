var wiggleX = lengthdir_x(wigDst,wigDir);
var wiggleY = lengthdir_x(wigDst/5,wigDir);
wigDir += wigSpd;

var mx = lengthdir_x(spd,dir);
var my = lengthdir_y(spd,dir);

x += mx+wiggleX;
y += my+wiggleY;

mask_index = sprite_get("smokeHurtbox");
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
mask_index = sprite_get("smokeHitbox");

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

//deduct from the life
if myLife > 0
	myLife--;
	
if myLife == 0
{
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
}

/* Smoke collision is handled in update!*/