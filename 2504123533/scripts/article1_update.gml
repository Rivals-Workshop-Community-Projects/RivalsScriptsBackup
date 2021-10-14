//enum
enum Potions
{
	Null,
	Urchin,
	Strong,
	Jelly,
	Tide,
	Star
}

//gravity
if (free)
{
	if (hitstop == 0 && gravityIgnoreFrames <= 1)
		vsp += grav;
		
	if gravityIgnoreFrames > 0
		gravityIgnoreFrames--;
}
else
{
	var oVSP = vsp;
	vsp = 0;
	hsp = lerp(hsp,0,lerpSlip);
	
	if(thrown)
	{
		//platformArticle = instance_create(x,y,"obj_article_platform");
		print("Potion Landed");
		thrown = false;
		
		if(functionType == 0)
			functionType = 1;
		
		//Squish based on vsp
		var squishVal = 0.5;
		image_yscale *= 1-squishVal;
		image_xscale *= 1+squishVal;
		
		if(!place_meeting(x,y+1,asset_get("par_block")))
			y = round(y)-1;
			
		storedAttack = AT_FSTRONG;
	}
}

//squash shit
image_xscale = lerp(image_xscale,defaultXScale,lerpScale);
image_yscale = lerp(image_yscale,defaultYScale,lerpScale);

//Change to Strong Potion if attacked with a strong
if potionType == Potions.Strong && (player_id.attack == AT_FSTRONG || player_id.attack == AT_DSTRONG || player_id.attack == AT_USTRONG)
{
	if (player_id.attack != storedAttack || //only change if not same attack OR below
	(player_id.spr_dir != spr_dir && storedAttack == AT_FSTRONG)) && //change fstrong direction
	player_id.state == PS_ATTACK_GROUND // only change when on ground
	{
		print_debug("Changed Potion: " + string(potionType) + "[" + string(storedAttack) + "] -> 6[" + string(player_id.attack) +"]"); 
		potionType = Potions.Strong;
		storedAttack = player_id.attack;
		spr_dir = player_id.spr_dir;
		sound_play(asset_get("mfx_confirm"));
	}
}//*/

//Sprite Setter
//This should be the last thing
//visible = true;//delete this one i set the sprite in frame 1
var sprStr = (functionType == 0 ? "potion" : "cauldron") + getPotionName(potionType);
if potionType == Potions.Strong && functionType == 1
{
	switch(storedAttack)
	{
		case AT_USTRONG: sprStr += "Up";break;
		case AT_DSTRONG: sprStr += "Down";break;
		case AT_FSTRONG: sprStr += "Forward";break;
	}
}
if allowSpriteUpdate
{
	sprite_index = sprite_get(sprStr);
	mask_index = sprite_index;
}
image_index += 0.2;

if(platformArticle)
{
	platformArticle.vsp = vsp;
	platformArticle.hsp = hsp;
	platformArticle.x = x;
	platformArticle.y = y;
	platformArticle.sprite_index = sprite_index;
	platformArticle.mask_index = sprite_index;
	platformArticle.image_xscale = image_xscale;
	platformArticle.image_yscale = image_yscale;
}

//Destroy OOB
if y > get_stage_data( SD_Y_POS ) + get_stage_data(SD_BOTTOM_BLASTZONE) + 30
{
	print_debug("Removed OOB: Potion " + sprStr);
	destroyed = true;
}

//Knockback stuff
// Credits: Funghi
if (state == 1){
	if (vsp > 2){
		past_hitbox = noone;
		past_attack = noone;
		past_group = noone;		
	}
	
	with (pHitBox){
		if (place_meeting(x, y, other) && other.boxhitbox == noone){
			if (other.hit_delay <= 1 && throws_rock != 2){
				if ((!(other.past_hitbox == hbox_num && other.past_attack == attack)) &&
				((other.past_group == hbox_group && other.past_attack != attack)
				|| other.past_group != hbox_group || -1 = hbox_group))
				&& !(player_id == other.player_id && attack == AT_NSPECIAL && hbox_num == 3){
					other.past_hitbox = hbox_num;
	    			other.past_attack = attack;
	    			other.past_group = hbox_group;
	    			//are set so two hitboxes that aren't supposed to both hit a player also don't hit the article 

	    			other.hsp = 0;
	    			other.vsp = 0;
					
    					//destroys the hitbox that the article spawns so you probably don't need this
    				other.destroy_check = false;
    				
    				//for hitpause
    				other.hit_delay = 9 + hitpause + extra_hitpause;
    				
    				//for jklnocback
    				other.kb_scaling = kb_scale;
    				other.bkb = kb_value;
    				with (other) {kb_angle = get_hitbox_angle(other.id)}

    					//hitpause
    				other.hitpause = true;
    				other.hitstop = hitpause + extra_hitpause;
    				
    				//defines who will own the hitbox that the article spawns
    				other.owner = player;
					
    				//says that the box got hit and then tells the player to decrease the health of the article by 1
    				other.health_check = true;
					
					if player_id == other.player_id
    				{
    					if attack == AT_FSPECIAL && hbox_num == 4
    					{
    						player_id.FSpecBounce = true;
    					}
    				}
					
					sound_play(pHitBox.sound_effect);	
					spawn_hit_fx(other.x, other.y, hit_effect);
					
					pHitBox.player_id.has_hit = true;
					pHitBox.player_id.hitpause = true;
					pHitBox.player_id.hitstop = hitpause;

					pHitBox.player_id.old_hsp = pHitBox.player_id.hsp;
					pHitBox.player_id.old_vsp = pHitBox.player_id.vsp;
					
				}
			}
		}
	}

	kb_speed = ((bkb + 70 * kb_scaling * fancynum * kb_adj) / 1.2); // calculates knockback speed

	if (hit_delay = 4){
		thrown = true;
		vsp = lengthdir_y(kb_speed , kb_angle);
		hsp = lengthdir_x(kb_speed*1.3 , kb_angle);
	}

	if (hit_delay > -10){
		hit_delay--;
	}
	
	if (hit_delay <= -10)
	{
		past_hitbox = 0;
		past_attack = 0;
		past_group = 0;
	}

	//Adjusted from fungi code
	//set below to lower number to allow for more slippage
	var slip = .05;
	if (hsp != 0 )
		hsp = abs(hsp) > 0.15 ? (hsp + slip * (hsp > 0 ? -1 : 1)) : 0;

	if (vsp != 0 || hsp != 0){
		can_be_grounded = true;
		ignores_walls = false;
	}
}


//Detonation
if detonated && !hasDetonated
{
	hasDetonated = true;
	print(player_id.potNames[potionType-1] + " Detonated");
	destroyed = true;
	switch(potionType)
	{
		case Potions.Urchin:
		{
			lifetime = 60*10;
			destroyed = false;
			
			sprite_index = sprite_get("cauldronUrchinAttack");
			mask_index = sprite_get("cauldronUrchinAttackMask");
			//grav = 0;
			//vsp = 0;
			
			image_index = 0;
			
			allowSpriteUpdate = false;
			sound_play(asset_get("sfx_kragg_spike"));			
		}
		break;		
		case Potions.Jelly:
		{
			var mx = x;
			var my = y;
			with player_id
			{
				spawn_hit_fx(mx,my, jcaul);
			}
			sound_play(asset_get("sfx_poison_hit_strong"));
			visible = false;
			lifetime = 10;
			destroyed = false;
		}
		break;
		case Potions.Tide:
		{
				with(player_id)
			{
				var h = create_hitbox(AT_NSPECIAL,1,other.x,other.y);
				var g = create_hitbox(AT_NSPECIAL,6,other.x,other.y);
			}
			sound_play(asset_get("sfx_orcane_fspecial"));			
		}
		break;
		case Potions.Star:
		{
			with(player_id)
			{
				var h = create_hitbox(AT_NSPECIAL,4,other.x,other.y-30);
			}
		}
			sound_play(asset_get("sfx_holy_lightning"));			
		break;
		case Potions.Strong:
		{
			var cAttack = storedAttack;
			with(player_id)
			{
				if true//barPoints >= barAmount
				{
					print("Creating Clone");
					var curCharge = 0//(floor(barPoints/barAmount))/barNumber*60;
					//barPoints -= floor(barPoints/barAmount);
					
					var f = spawn_hit_fx(other.x,other.y,spawnCloneFX);
					f.depth = other.depth-1;
					
					var c = instance_create(other.x,other.y,"obj_article2");
					
					var thisAttack = cAttack;
					var windows = array_create(0);
					var hitboxes = array_create(0);
					
					if cAttack == AT_FSTRONG
					{
						c.sprite_index = sprite_get("fstrongGooCharged");
						windows = [1,2,3];
						hitboxes = [1];
					}
					if cAttack == AT_DSTRONG
					{
						c.sprite_index = sprite_get("dstrongGooCharged");
						windows = [1,2,3];
						hitboxes = [1,2];
					}
					if cAttack == AT_USTRONG
					{
						c.sprite_index = sprite_get("ustrongGooCharged");
						windows = [1,2,3,4];
						hitboxes = [1,2];
					}
					c.image_index = 0;//get_window_value( cAttack, 3, AG_WINDOW_ANIM_FRAME_START);
					
					c.image_xscale = 2;
					c.image_yscale = 2;
					c.spr_dir = other.spr_dir
					
					c.storedAttack = thisAttack;
					c.hitboxes = hitboxes;
					c.windows = windows;
					c.charge = curCharge;
				}
				else
				{
					detonated = false;
					hasDetonated = false;
					destroyed = false;
				}
			}
		}break;
	}
}

//special event for urchin+others lol
if detonated
{
	switch (potionType)
	{
		case Potions.Urchin:
		{
			image_index += 0.2;
			if atFrame(10)
				image_index = 9;
			
			urchinCooldown = clamp(urchinCooldown,-2, 10)
			
			if urchinCooldown <= 0
			{
				var urchObj = id;
				with(oPlayer)
				{
					if place_meeting(x,y,other) && id != other.player_id
					{
						with(other.player_id)
						{
							//print("Urchin Touching");
							var h = create_hitbox(AT_NSPECIAL,3,other.x,other.y);
							urchObj.image_index = 0;
						}
						break;
					}
				}
				urchinCooldown = 32;
			}
			
			else urchinCooldown--;
			if lifetime <= 15
				image_index = 10+((1-(lifetime/15))*2)
			
		}break;
		
		case Potions.Jelly:
		{
			if lifetime == 1
			{
				with(player_id)
				{
					var h = create_hitbox(AT_NSPECIAL,2,other.x,other.y-30);
				}
			}
		}break;
	}
}

if lifetime > 0
	lifetime--;
if lifetime == 0
	destroyed = true;

if destroyed
{
	if(platformArticle)
		instance_destroy(platformArticle);
		
	//effect??
	if potionType == Potions.Tide
		spawn_hit_fx( x, y, player_id.tideDestroyEffect);
		
	instance_destroy();
}

#define getPotionName(pType)
{
	return player_id.potNames[pType-1];
}

#define inArray(number, arr)
{
	return array_find_index(arr, number) != -1;
}

#define atFrame(frame)
{
	return image_index >= frame;
}

#define combineWindowLength(att, arr)
{
	var total = 0;
	for(var i=0; i<array_length(arr); i++)
		total += get_window_value( att, arr[i], AG_WINDOW_LENGTH);
	return total;
}