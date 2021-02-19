//

//Get hit

var got_hit = 0;

if (active)
{
	with (asset_get("pHitBox")){
		if (place_meeting(x,y,other)){
				got_hit = 1;
		}
	}
	
	with (asset_get("oPlayer")){
		if (place_meeting(x,y-2,other)&&y+16>other.y && y>-1){
					got_hit = 1;
					if (vsp<0)
					{
						vsp=0;
					}
		}
	}

	if (got_hit==1)
	{
		active = false;
		spawn_hit_fx( x-8, y-8, 14 );
		y+=9999;
		sound_play(sound_get("break"));
		respawntimer = 300 + random_func( 0, 800, true );
		
		if (blocktype==1)
		{
			var item = instance_create(x,y-48-9999,"obj_stage_article", 13);
			obj_stage_main.blocknum-=1;
		}
	}
}
if (active==false)
{
	respawntimer-=1;
	if (respawntimer==0)
	{
		y-=9999;
		active = true;
		var respchance=11;
		if(!is_aether_stage())
		{
			respchance=7;
		}
		if (random_func( 0, 20, true )<respchance && obj_stage_main.blocknum<2)
		{
			blocktype=1;	
			sprite_index = sprite_get("block");			
			obj_stage_main.blocknum+=1;
		}
		else
		{
			blocktype = 0;
			sprite_index = sprite_get("brick");
		}
		image_index = blocktype;
	}
}

image_index+=0.1;