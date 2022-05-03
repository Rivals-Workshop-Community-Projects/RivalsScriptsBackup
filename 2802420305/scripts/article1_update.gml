
if(hardDropped)
{
	hardDropped = false;
	var fx = spawn_hit_fx(x, y+32, obj_stage_main.hardDropFx);
	fx.depth = depth+1;
	if(sparks != -1)
	{
		var fx2 = spawn_hit_fx(x, y+32, sparks);
		fx2.depth = depth+2;
	}
}
if(cleared)
{
	sprite_index = asset_get("empty_sprite");
	mask_index = asset_get("empty_sprite");
	if(playFx)
	{
		playFx = false;
		spawn_hit_fx(obj_stage_main.lineClearFxPosX, y, obj_stage_main.lineClearFx);
	}
	if(destroyNext)
		instance_destroy();
	return;
}

if(grounded && !died)
{
    var hitbox = instance_place(x, y, pHitBox);
    //TODO: offset here doesnt work? bcz no sprite offset now........ NVM this is for getting hit
    
    if(hitbox != noone) 
    {
    	//register hitbox only once & ignore own attack
    	if(hitbox > last_hitbox && hitbox.player_id != player_id)// hitbox.player_id != id)// && hitbox.player_id != obj_stage_main)
    	{
    		hp -= hitbox.damage;
    		
    		with(hitbox.player_id) 
	        {
	            if(!has_hit) 
	            {
	                /*if(hitbox.type == 1)
	                {
	                    hitpause = true;
	                    hitstop_full = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_BASE_HITPAUSE);
	                    hitstop = hitstop_full;
	                }*/
	                has_hit = true;
	                sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
	                //TODO: instead of playing sound only once, play it multiple times but quieter the more hits there were?
	            }
                spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
	        }
	        
        	if(hp <= hpMax / 3)
        		image_index = orgImageIndex + 28;
        	else if(hp <= hpMax / 1.5)
        		image_index = orgImageIndex + 21;
        	else if(hp <= hpMax)
        		image_index = orgImageIndex + 14;
    	}
		last_hitbox = hitbox;
		
        if (hp <= 0)
        {
            died = true;
            
            with(oPlayer)
            {
            	old_hsp = hitpause ? old_hsp : 0;
            	old_vsp = hitpause ? old_vsp : 0;
	            hitpause = true;
	            hitstop_full = 10;
	            hitstop = 10;
            }
            shake_camera(1, 10);
            playDestroyFx();
            //TODO: also some hitstop & shake on regular hit?
            
	        obj_stage_main.field[gridX, gridY] = 0;
	        obj_stage_main.destroyedArticle = true;
            instance_destroy();
            exit;
        }
    }
}

#define playDestroyFx()
{
	if(typCol == 0)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx0);
	if(typCol == 1)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx1);
	if(typCol == 2)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx2);
	if(typCol == 3)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx3);
	if(typCol == 4)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx4);
	if(typCol == 5)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx5);
	if(typCol == 6)
		spawn_hit_fx(x, y, obj_stage_main.squareDestrFx6);
}