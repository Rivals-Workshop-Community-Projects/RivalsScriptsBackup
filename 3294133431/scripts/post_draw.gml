//
if(!taunt_down && tauntAnimTimer1 == 0)
	tauntAnimStartDelayTimer = 0;

if((inTauntMenu || tauntAnimTimer1 > 0) && !invis && invisAnimationAlpha == 1 && tauntAnimStartDelayTimer++ > tauntAnimStartDelay)
{
    /*draw_set_font(asset_get("fName"));
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    for(var i = -2; i < 3; i++)
    	for(var j = -2; j < 3; j++)
		    draw_text_ext_transformed_color(x+i, y-155+j, nspecialNames[tauntIndex], 20, 
		                        100, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
    draw_text_ext_transformed_color(x, y-155, nspecialNames[tauntIndex], 20, 
                        100, 1, 1, 0, c_white, c_white, c_white, c_white, 1);*/
    
    var xOff = -26;
    var yOff = -170;
    var animVertMul = 2;
    var scrollSpd = 0.5;
    
    if(!tauntFirstMenu)
    {
    	var animOffY2 = tauntAnimDur*animVertMul-tauntAnimTimer2*animVertMul;
    	var animAlpha2 = tauntAnimTimer2/tauntAnimDur;
		scroll2 = lerp(scroll2, tauntIndex2, scrollSpd);
		for(var i = 0; i < 4; i++)
            draw_sprite_ext(sprite_get("tauntMenu"), 5 + i + 4 * tauntIndex1,
	            x+xOff + (i-scroll2) * 54,
	            y+yOff-54+animOffY2, 
	            2, 2, 0, 
	            i == tauntIndex2 ? c_white : c_ltgray,
            	(i == tauntIndex2 ? 1 : 0.8)*animAlpha2);
	            
    	draw_sprite_ext(sprite_get("tauntMenuSelect"), 0, 
		    	x+xOff-2, 
		    	y+yOff-2-54+animOffY2, 
		    	2, 2, 0, c_white, 1*animAlpha2);
    }
    else
    	scroll2 = 0;
    	
	var animOffY1 = tauntAnimDur*animVertMul-tauntAnimTimer1*animVertMul;
	var animAlpha1 = tauntAnimTimer1/tauntAnimDur;
	scroll1 = lerp(scroll1, tauntIndex1, scrollSpd);
    for(var i = 0; i < 5; i++)
        draw_sprite_ext(sprite_get("tauntMenu"), i, 
            x+xOff + (i-scroll1) * 54,
            y+yOff+animOffY1, 
            2, 2, 0, 
            i == tauntIndex1 ? c_white : c_ltgray,
            (i == tauntIndex1 ? 1 : 0.8)*animAlpha1);
            
    draw_sprite_ext(sprite_get("tauntMenuSelect"), 0, 
			    x+xOff-2, 
			    y+yOff-2+animOffY1, 
			    2, 2, 0, c_white, 1*animAlpha1);
            
    
	if(inTauntMenu)
	{
    	tauntAnimTimer1++;
		
		if(!tauntFirstMenu)
			tauntAnimTimer2++;
		else
			tauntAnimTimer2 = 0;
		tauntAnimTimer1 = min(tauntAnimTimer1, tauntAnimDur);
		tauntAnimTimer2 = min(tauntAnimTimer2, tauntAnimDur);
	}
	else if(tauntAnimTimer1 > 0)
	{
		tauntAnimTimer1--;
		tauntAnimTimer1 = max(tauntAnimTimer1, 0);
	}
}
else
{
    tauntAnimTimer1 = 0;
    tauntAnimTimer2 = 0;
}

var alphaChar = min(invisAnimationAlpha, invisAlpha);

if(!disguised || disguisedAsSelf)
{
	init_shader();
	
	var spr_ind = sprite_index;
	if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_FTILT || attack == AT_FAIR))
		spr_ind = backstabSuccess ? sprite_get(free ? "fair" : "ftilt") : sprite_get(free ? "fairWeak" : "ftiltWeak");

	DrawSprite(spr_ind, image_index, x, y, spr_dir*1, 1, 0, c_white, alphaChar, true);
}
else
{
	var small = chars[charIndex] == "ex";
	if(chars[charIndex] == "custom")
		small = !playerSmallSprites[playerDisguise-1];
	var scale = small ? 1 : 2; //small sprite fix
	var disguiseSprite = GetSpriteFromState(state, chars[charIndex], "");
	if(chars[charIndex] == "fer" && disguiseSprite == asset_get("empty_sprite"))
		disguiseSprite = GetSpriteFromState(state, "ferret", "");


	var disguisedImgNum = sprite_get_number(disguiseSprite);
	var disguisedAnimSpd = GetCurrAnimSpeed();
	var disguisedImgInd;
	if(DoesAnimLoop())
		disguisedImgInd = floor(disguisedImgNum*state_timer/(disguisedImgNum/disguisedAnimSpd));
	else
		disguisedImgInd = min(floor(disguisedImgNum*state_timer/(disguisedImgNum/disguisedAnimSpd)), disguisedImgNum-1);

	if(state == PS_CROUCH)//TODO: fix for all of base cast
	{
		var disguisedImgNumHalf = disguisedImgNum/2;
		if(down_down)
			disguisedImgInd = min(floor(disguisedImgNum*state_timer/(disguisedImgNumHalf/disguisedAnimSpd)), (disguisedImgNum-1)/2);
		else
			disguisedImgInd = min(floor(disguisedImgNumHalf+disguisedImgNum*state_timer/(disguisedImgNumHalf/disguisedAnimSpd)), disguisedImgNum-1);
	}
	// printOnPlay(string(disguisedImgInd) + " / " + string(disguisedImgNum));


	if(state == PS_ATTACK_GROUND && attack == AT_TAUNT_2)
		disguisedImgInd = image_index;
		
	if(chars[charIndex] == "cat")
		DrawSein();
	if(chars[charIndex] == "frog")
		DrawFrogAfterImage(disguiseSprite, disguisedImgInd);
	if(chars[charIndex] == "bear")
		DrawIce(true);
		
	if(state == PS_ATTACK_AIR && attack == AT_EXTRA_1)
	{
		disguiseSprite = asset_get("mech_hover");
		disguisedImgInd = image_index;
	}
	
	DrawSprite(disguiseSprite, disguisedImgInd, x, y, spr_dir*scale, scale, 0, c_white, alphaChar, false);
	
	if(chars[charIndex] == "sword")
		DrawSprite(GetSpriteFromState(state, chars[charIndex], "_sword"), disguisedImgInd, x, y, spr_dir*scale, scale, 0, c_white, alphaChar, false);
	if(chars[charIndex] == "frog")
		DrawSprite(GetSpriteFromState(state, chars[charIndex], "_collar"), disguisedImgInd, x, y, spr_dir*scale, scale, 0, c_white, alphaChar, false);
	if(chars[charIndex] == "bear")
		DrawIce(false);
}


var hudIndex = 0;
hudColor = get_player_hud_color(player);
var playerDmg = get_player_damage(player);
if(disguised)
{
	with(oPlayer)
		if(player == other.disguisedPlayerIndex)
			other.hudColor = get_player_hud_color(player);

	if(disguisedPlayerIndex == -1)
		hudColor = c_gray;

	playerDmg = disguisedDmg;
}
if(playerDmg > 99)
	hudIndex = 1;

hudHeight = char_height;
if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && hudYOffsetMap[? attack] != undefined)
	hudHeight += hudYOffsetMap[? attack];

var isMech = disguised && !disguisedAsSelf && chars[charIndex] == "mech";
draw_sprite_ext(sprite_get("hudHp"), hudIndex, x-24, y-54-hudHeight+(isMech?2:0), 1, 1, 0, hudColor, alphaChar);

var offset = 0;
if(playerDmg > 9)
	offset = 5;
if(playerDmg > 99)
	offset = 10;
var dmgString = string(playerDmg);
for(var i = 1; i < string_length(dmgString)+1; i++)
	draw_sprite_ext(sprite_get("hud_numbers"), real(string_char_at(dmgString, i)), x-24+i*10-offset, y-48-hudHeight, 1, 1, 0, c_white, alphaChar);
draw_sprite_ext(sprite_get("hud_numbers"), 10, x-24+(string_length(dmgString)+1)*10-offset, y-48-hudHeight, 1, 1, 0, c_white, alphaChar);


if(isMech)
	draw_sprite_ext(mechOverheated ? asset_get("mech_heatbar_spr") : asset_get("mech_steambar_spr"), (mechHeat/mechHeatMax) * (sprite_get_number(asset_get("mech_steambar_spr"))-1), x-32, y-102, 2, 2, 0, c_white, invisAlpha);


/*with(oPlayer)
{
	if(player == 2)
	{
		var startX = 350;
		var startY = 130;
		var currX = startX;
		var currY = startY;
		var offX = 210;
		var offY = 16;
		draw_debug_text(currX, currY, "hurtbox_spr = " + string(hurtbox_spr)); currY+=offY;
		draw_debug_text(currX, currY, "crouchbox_spr = " + string(crouchbox_spr)); currY+=offY;
		draw_debug_text(currX, currY, "air_hurtbox_spr = " + string(air_hurtbox_spr)); currY+=offY;
		draw_debug_text(currX, currY, "hitstun_hurtbox_spr = " + string(hitstun_hurtbox_spr)); currY+=offY; currY+=offY;
		draw_debug_text(currX, currY, "knockback_adj = " + string(knockback_adj)); currY+=offY;
		draw_debug_text(currX, currY, "walk_speed = " + string(walk_speed)); currY+=offY;
		draw_debug_text(currX, currY, "walk_accel = " + string(walk_accel)); currY+=offY;
		draw_debug_text(currX, currY, "walk_turn_time = " + string(walk_turn_time)); currY+=offY;
		draw_debug_text(currX, currY, "initial_dash_time = " + string(initial_dash_time)); currY+=offY;
		draw_debug_text(currX, currY, "initial_dash_speed = " + string(initial_dash_speed)); currY+=offY;
		draw_debug_text(currX, currY, "dash_speed = " + string(dash_speed)); currY+=offY;
		draw_debug_text(currX, currY, "dash_turn_time = " + string(dash_turn_time)); currY+=offY;
		draw_debug_text(currX, currY, "dash_turn_accel = " + string(dash_turn_accel)); currY+=offY;
		draw_debug_text(currX, currY, "dash_stop_time = " + string(dash_stop_time)); currY+=offY;
		draw_debug_text(currX, currY, "dash_stop_percent = " + string(dash_stop_percent)); currY+=offY;
		draw_debug_text(currX, currY, "ground_friction = " + string(ground_friction)); currY+=offY;
		draw_debug_text(currX, currY, "moonwalk_accel = " + string(moonwalk_accel)); currY+=offY;
		draw_debug_text(currX, currY, "max_djumps = " + string(max_djumps)); currY+=offY;
		draw_debug_text(currX, currY, "jump_start_time = " + string(jump_start_time)); currY+=offY;
		draw_debug_text(currX, currY, "jump_speed = " + string(jump_speed)); currY+=offY;
		draw_debug_text(currX, currY, "short_hop_speed = " + string(short_hop_speed)); currY+=offY;
		draw_debug_text(currX, currY, "djump_speed = " + string(djump_speed)); currY+=offY;
		draw_debug_text(currX, currY, "jump_change = " + string(jump_change)); currY+=offY;
		draw_debug_text(currX, currY, "djump_accel = " + string(djump_accel)); currY+=offY;
		draw_debug_text(currX, currY, "djump_accel_start_time = " + string(djump_accel_start_time)); currY+=offY;
		draw_debug_text(currX, currY, "djump_accel_end_time = " + string(djump_accel_end_time)); currY+=offY; currX+=offX; currY = startY;
		
		draw_debug_text(currX, currY, "leave_ground_max = " + string(leave_ground_max)); currY+=offY;
		draw_debug_text(currX, currY, "air_max_speed = " + string(air_max_speed)); currY+=offY;
		draw_debug_text(currX, currY, "max_jump_hsp = " + string(max_jump_hsp)); currY+=offY;
		draw_debug_text(currX, currY, "air_accel = " + string(air_accel)); currY+=offY;
		draw_debug_text(currX, currY, "air_friction = " + string(air_friction)); currY+=offY;
		draw_debug_text(currX, currY, "double_jump_time = " + string(double_jump_time)); currY+=offY;
		draw_debug_text(currX, currY, "gravity_speed = " + string(gravity_speed)); currY+=offY;
		draw_debug_text(currX, currY, "hitstun_grav = " + string(hitstun_grav)); currY+=offY;
		draw_debug_text(currX, currY, "max_fall = " + string(max_fall)); currY+=offY;
		draw_debug_text(currX, currY, "fast_fall = " + string(fast_fall)); currY+=offY;
		draw_debug_text(currX, currY, "land_time = " + string(land_time)); currY+=offY;
		draw_debug_text(currX, currY, "prat_land_time = " + string(prat_land_time)); currY+=offY;
		draw_debug_text(currX, currY, "prat_fall_accel = " + string(prat_fall_accel)); currY+=offY;
		draw_debug_text(currX, currY, "walljump_hsp = " + string(walljump_hsp)); currY+=offY;
		draw_debug_text(currX, currY, "walljump_vsp = " + string(walljump_vsp)); currY+=offY;
		draw_debug_text(currX, currY, "walljump_time = " + string(walljump_time)); currY+=offY;
		draw_debug_text(currX, currY, "roll_forward_max = " + string(roll_forward_max)); currY+=offY;
		draw_debug_text(currX, currY, "roll_backward_max = " + string(roll_backward_max)); currY+=offY;
		draw_debug_text(currX, currY, "wave_land_time = " + string(wave_land_time)); currY+=offY;
		draw_debug_text(currX, currY, "wave_land_adj = " + string(wave_land_adj)); currY+=offY;
		draw_debug_text(currX, currY, "wave_friction = " + string(wave_friction)); currY+=offY;
		draw_debug_text(currX, currY, "techroll_speed = " + string(techroll_speed)); currY+=offY;
		draw_debug_text(currX, currY, "air_dodge_speed = " + string(air_dodge_speed)); currY+=offY;
		draw_debug_text(currX, currY, "char_height = " + string(char_height)); currY+=offY;
		draw_debug_text(currX, currY, "bubble_x = " + string(bubble_x)); currY+=offY;
		draw_debug_text(currX, currY, "bubble_y = " + string(bubble_y)); currY+=offY; currX+=offX; currY = startY;
		
		draw_debug_text(currX, currY, "wall_frames = " + string(wall_frames)); currY+=offY;
		draw_debug_text(currX, currY, "dodge_startup_frames = " + string(dodge_startup_frames)); currY+=offY;
		draw_debug_text(currX, currY, "dodge_active_frames = " + string(dodge_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "dodge_recovery_frames = " + string(dodge_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "tech_active_frames = " + string(tech_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "tech_recovery_frames = " + string(tech_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "techroll_startup_frames = " + string(techroll_startup_frames)); currY+=offY;
		draw_debug_text(currX, currY, "techroll_active_frames = " + string(techroll_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "techroll_recovery_frames = " + string(techroll_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "air_dodge_startup_frames = " + string(air_dodge_startup_frames)); currY+=offY;
		draw_debug_text(currX, currY, "air_dodge_active_frames = " + string(air_dodge_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "air_dodge_recovery_frames = " + string(air_dodge_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_forward_startup_frames = " + string(roll_forward_startup_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_forward_active_frames = " + string(roll_forward_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_forward_recovery_frames = " + string(roll_forward_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_back_startup_frames = " + string(roll_back_startup_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_back_active_frames = " + string(roll_back_active_frames)); currY+=offY;
		draw_debug_text(currX, currY, "roll_back_recovery_frames = " + string(roll_back_recovery_frames)); currY+=offY;
		draw_debug_text(currX, currY, "idle_anim_speed = " + string(idle_anim_speed)); currY+=offY;
		draw_debug_text(currX, currY, "walk_anim_speed = " + string(walk_anim_speed)); currY+=offY;
		draw_debug_text(currX, currY, "dash_anim_speed = " + string(dash_anim_speed)); currY+=offY;
		draw_debug_text(currX, currY, "crouch_anim_speed = " + string(crouch_anim_speed)); currY+=offY;
		draw_debug_text(currX, currY, "pratfall_anim_speed = " + string(pratfall_anim_speed)); currY+=offY;currY+=offY;
		
		draw_debug_text(currX, currY, "land_sound = " + string(land_sound)); currY+=offY;
		draw_debug_text(currX, currY, "landing_lag_sound = " + string(landing_lag_sound)); currY+=offY;
		draw_debug_text(currX, currY, "waveland_sound = " + string(waveland_sound)); currY+=offY;
		draw_debug_text(currX, currY, "jump_sound = " + string(jump_sound)); currY+=offY;
		draw_debug_text(currX, currY, "djump_sound = " + string(djump_sound)); currY+=offY;
		draw_debug_text(currX, currY, "air_dodge_sound = " + string(air_dodge_sound)); currY+=offY;
	}
}*/

#define DrawSprite(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha, doShader)
{
	if(state == PS_PARRY && state_timer > 0 && state_timer < 9)
	{
		//parry
		alpha += 0.5;
		draw_sprite_ext(sprImg, imgInd, xx+4, yy, xDir, yDir, angle, c_black, alpha);
		draw_sprite_ext(sprImg, imgInd, xx, yy+4, xDir, yDir, angle, c_black, alpha);
		draw_sprite_ext(sprImg, imgInd, xx-4, yy, xDir, yDir, angle, c_black, alpha);
		draw_sprite_ext(sprImg, imgInd, xx, yy-4, xDir, yDir, angle, c_black, alpha);

		if(!disguised || disguisedAsSelf)
			draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha);
		else
		{
			gpu_set_fog(1, make_colour_rgb(165, 155, 205), 0, 1);
			draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha);
			gpu_set_fog(0, c_white, 0, 0);
		}
	}
	else if((((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && state_timer > 2 && state_timer < 17) && (disguised && !disguisedAsSelf && chars[charIndex] != "bear"))
	|| ((state == PS_AIR_DODGE && state_timer > 1 && state_timer < 13) && (disguised && !disguisedAsSelf && chars[charIndex] != "smoke" && chars[charIndex] != "bear" && chars[charIndex] != "gus"))
	|| (state == PS_RESPAWN  || invince_time > 0))
	{
		//disguise dodge + respawn
		DrawBaseSprite(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha, doShader);

		var glowColor = make_color_rgb(255, 255, 255);
		gpu_set_fog(1, glowColor, 0, 1);
		draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, min(0.5, alpha));
		gpu_set_fog(0, c_white, 0, 0);
	}
	else if(state == PS_ATTACK_GROUND && (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && strong_charge > 0 && (strong_charge % 10) < 5)
	{
		//strong charge
		DrawBaseSprite(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha, doShader);
		
	    var strongColor = make_color_rgb(255, 255, 0);
	    gpu_set_fog(1, strongColor, 0, 1);
		draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, min(0.5, alpha));
	    gpu_set_fog(0, c_white, 0, 0);
	}
	else if(state == PS_PRATFALL || state == PS_PRATLAND)
	{
		if(doShader) shader_start();
		draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, c_gray, alpha);
		if(doShader) shader_end();
	}
	else
	{
		DrawBaseSprite(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha, doShader);
	    
		if(disguised && !disguisedAsSelf && chars[charIndex] == "mech" && mechOverheated)
		{
		    var glowColor = make_color_rgb(255, 0, 0);
		    gpu_set_alphatestenable(true);
		    gpu_set_fog(1, glowColor, 0, 1);
		    if(get_gameplay_time() % 60 < 30)
				draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, ((get_gameplay_time() % 60) / 60) * 0.666);
			else
				draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, 0.666 - ((get_gameplay_time() % 60) / 60) * 0.666);
		    gpu_set_fog(0, c_white, 0, 0);
		    gpu_set_alphatestenable(false);
		    //TODO: some parts shouldnt change color... should be done with color palette change?
		}
	}
}

#define DrawBaseSprite(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha, doShader)
{
	if(disguised && !disguisedAsSelf && chars[charIndex] == "custom")
	{
		public_sprImg = sprImg;
		public_imgInd = imgInd;
		public_xx = xx;
		public_yy = yy;
		public_xDir = xDir;
		public_yDir = yDir;
		public_angle = angle;
		public_color = color;
		public_alpha = alpha;
		with(oPlayer)
		{
			if(player == other.playerDisguise)
			{
				shader_start();//make workshop alts work
				draw_sprite_ext(other.public_sprImg, other.public_imgInd, other.public_xx, other.public_yy, other.public_xDir, other.public_yDir, other.public_angle, other.public_color, other.public_alpha);
				shader_end();
			}
		}
	}
	else
	{
		if(doShader) shader_start();
		draw_sprite_ext(sprImg, imgInd, xx, yy, xDir, yDir, angle, color, alpha);
		if(doShader) shader_end();
	}
}

#define DoesAnimLoop()
{
	if(state == PS_IDLE
	|| state == PS_WALK
	|| state == PS_DASH)
		return true;
	return false;
}

#define GetCurrAnimSpeed()
{
	// printOnPlay(get_state_name(state));

	if(state == PS_IDLE)
		return idle_anim_speed;
	if(state == PS_WALK)
		return walk_anim_speed;

	if(state == PS_DASH)
		return dash_anim_speed;
	if(state == PS_DASH_START)
		return 0.25;
	if(state == PS_DASH_STOP)
		return 0.25;
	if(state == PS_DASH_TURN)
		return 0.25;

	if(state == PS_CROUCH) //TODO: this should freeze at half frame
		return crouch_anim_speed * 2;

	
	if(state == PS_IDLE_AIR)
		return 0.1;
	if(state == PS_PRATFALL)
		return pratfall_anim_speed;


	if(state == PS_JUMPSQUAT)
		return 0.1;
	if(state == PS_FIRST_JUMP)
		return 0.1;
	if(state == PS_DOUBLE_JUMP)
		return 0.25;
	if(state == PS_WALL_JUMP)
		return 0.25;
		
	if(state == PS_ROLL_FORWARD)
		return 0.25;
	if(state == PS_ROLL_BACKWARD)
		return 0.25;
	if(state == PS_AIR_DODGE)
		return 0.25;
		
	if(state == PS_WAVELAND)
		return wave_land_time;

	if(state == PS_PARRY_START)
		return 0.25;
	if(state == PS_PARRY)
		return 0.25;
		
	return 0.25;
}

#define GetSpriteFromState(state, char, suffix)
if(spriteMap[? state] == undefined)
{
    printOnPlay("missing entry for: " + get_state_name(state));
    return asset_get("empty_sprite");
}
if(char == "custom")
{
	if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT_2)
	{
		if(asset_get("__newsprite"+string(playerTauntAttackValues[playerDisguise-1][? AG_SPRITE])) != -1)
			return asset_get("__newsprite"+string(playerTauntAttackValues[playerDisguise-1][? AG_SPRITE]));
	}

	var stateName = get_state_name(state);
	if(playerSpriteMaps[playerDisguise-1][? stateName] == undefined)//custom char sprite not yet recorded
	{
		var alternativeStatePriority = [PS_IDLE, PS_WALK, PS_WALK_TURN, PS_CROUCH, PS_DASH, PS_DASH_START, PS_FIRST_JUMP];
		for(var i = 0; i < array_length(alternativeStatePriority); i++)
			if(asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? get_state_name(alternativeStatePriority[i])])) != -1)
				return asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? get_state_name(alternativeStatePriority[i])]));
		for(var i = 0; i < 36; i++)
			if(asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? get_state_name(i)])) != -1)
				return asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? get_state_name(i)]));

		return GetSpriteFromState(state, "ex", "");//worst case - sandbert fallback
	}

    if(asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? stateName])) != -1)
    	return asset_get("__newsprite"+string(playerSpriteMaps[playerDisguise-1][? stateName]));
}
for(var i = 0; i <  array_length(spriteMap[? state]); i++)
{
    var spr = char + spriteMap[? state][i] + suffix;
    if(asset_get(spr) != -1)
        return asset_get(spr);
}
if(state == PS_AIR_DODGE && (char == "wolf" || char == "bug"))
{
	if(joy_pad_idle)
    	return asset_get(char + "_airdodge_neutral");
    	
	var xDir = 0;
	var yDir = 0;
	if(right_down) xDir++;
	if(left_down) xDir--;
	if(up_down) yDir++;
	if(down_down) yDir--;
	if(yDir == 0)
	{
		if(xDir == spr_dir)
	    	return asset_get(char + "_airdodge_forward") != -1 ? asset_get(char + "_airdodge_forward") : asset_get("empty_sprite");
		else
	    	return asset_get(char + "_airdodge_back") != -1 ? asset_get(char + "_airdodge_back") : asset_get("_airdodge_back");
	}
	
	if(xDir == 0)
	{
		if(yDir == 1)
	    	return asset_get(char + "_airdodge_up") != -1 ? asset_get(char + "_airdodge_up") : asset_get("empty_sprite");
		else
	    	return asset_get(char + "_airdodge_down") != -1 ? asset_get(char + "_airdodge_down") : asset_get("empty_sprite");
	}
	
	if(xDir == spr_dir)
	{
		if(yDir == 1)
	    	return asset_get(char + "_airdodge_upforward") != -1 ? asset_get(char + "_airdodge_upforward") : asset_get(char + "_airdodge_forup");
		else
	    	return asset_get(char + "_airdodge_downforward") != -1 ? asset_get(char + "_airdodge_downforward") : asset_get(char + "_airdodge_fordown");
	}
	
	if(yDir == 1)
    	return asset_get(char + "_airdodge_upback") != -1 ? asset_get(char + "_airdodge_upback") : asset_get(char + "_airdodge_backup");
	else
    	return asset_get(char + "_airdodge_downback") != -1 ? asset_get(char + "_airdodge_downback") : asset_get(char + "_airdodge_backdown");
}
if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_TAUNT_2)
{
	if(asset_get(char + "_taunt_spr" + suffix) != -1)
    	return asset_get(char + "_taunt_spr" + suffix);
    	
	if(asset_get(char + "_taunt" + suffix) != -1)
    	return asset_get(char + "_taunt" + suffix);
}
// if(state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE)//TODO: maybe also allow these?
if(state == PS_PRATFALL)
{
	if(asset_get(char + "_pratfall" + suffix) != -1)
    	return asset_get(char + "_pratfall" + suffix);
}
if(state == PS_PRATLAND)
{
	if(asset_get(char + "_landinglag" + suffix) != -1)//TODO: this isnt correct for krag, is there another name?
    	return asset_get(char + "_landinglag" + suffix);
	if(asset_get(char + "_land" + suffix) != -1)
    	return asset_get(char + "_land" + suffix);
}
if(char != "fer")
	printOnPlay("missing state: " + get_state_name(state));

if(asset_get(char + "_idle" + suffix) != -1)
	return asset_get(char + "_idle" + suffix);
return asset_get("empty_sprite");

#define DrawSein()
{
	var desiredX = x + seinOffX * spr_dir;
	var desiredY = y + seinOffY;
	
	var isIdle = seinLastStaticX == desiredX && seinLastStaticY == desiredY;
	
	seinLastStaticX = desiredX;
	seinLastStaticY = desiredY;
	
	if(isIdle)
		desiredY += sin(get_gameplay_time()/19)*5;
	
	if(get_gameplay_time() % 2 == 0)
	{
		var trail = trails[|trailCount-1];
		trail.angle = point_direction(seinX, seinY, desiredX, desiredY);
		trail.x = seinX;
		trail.y = seinY;
		trail.sprite_index = sprite_get("orbTrail");
		trail.image_index = 0;
		trail.height = 1;
		ds_list_delete(trails, trailCount-1);
		ds_list_insert(trails, 0, trail);
	}
	
	for(var i = trailCount-1; i >= 0; i--)
	{
		var trail = trails[|i];
		draw_sprite_ext(trail.sprite_index, trail.image_index, trail.x, trail.y, 2, trail.height * 2, trail.angle, c_white, invisAlpha);
		trail.image_index++;
		if(trail.image_index > 29)
			trail.image_index = 3;
		trail.height = max(trail.height-0.025, 0);
	}
	
	seinX = seinX * 0.9 + desiredX * 0.1;
	seinY = seinY * 0.9 + desiredY * 0.1;
	
	draw_sprite_ext(asset_get("orb_idle_spr"), get_gameplay_time()/3.5, seinX, seinY, 2, 2, 0, c_white, invisAlpha);
	//TODO: completely delay the orb movement a bit
}

#define DrawIce(behindChar)
{
	if(behindChar)
	{
		if((state == PS_PARRY && state_timer == 28-12)
		|| (state == PS_ROLL_FORWARD && state_timer == 28-10)
		|| (state == PS_ROLL_BACKWARD && state_timer == 28-10)
		|| (state == PS_AIR_DODGE && state_timer == 25-6))//TODO: timing may not be perfect
		{
		    for(var i = 0; i < iceShardCount; i++)
		    {
				var iceShard = iceShards[i];
				var behind = i < iceShardCount / 2;
				iceShard.x = x + random_func(i, 64, true) - 32;
				iceShard.y = y - 24 + random_func(i*2, 32, true) - 16;
				iceShard.sprite_index = behind ? asset_get("ice_parts_dark2") : asset_get("ice_parts_spr2");
				iceShard.image_index = 0;
				iceShard.timer = 0;
				iceShard.iceShardLifeTime = random_func(i*3, 8, true)+10;
				iceShard.behindChar = behind;
				var angle = random_func(i*4, 360, false);
				iceShard.hsp = lengthdir_x(4, angle);
				iceShard.vsp = lengthdir_y(4, angle);
		    }
		}
	}
	
    for(var i = 0; i < iceShardCount; i++)
    {
        var iceShard = iceShards[i];
        if(iceShard.behindChar != behindChar)
        	continue;
    	var imgNum = sprite_get_number(iceShard.sprite_index);
    	iceShard.image_index = floor((iceShard.timer / iceShard.iceShardLifeTime) * imgNum);
        iceShard.timer++;
    	if(iceShard.image_index > imgNum-1)
    		continue;
		iceShard.x += iceShard.hsp;
		iceShard.y += iceShard.vsp;
    	draw_sprite_ext(iceShard.sprite_index, iceShard.image_index, iceShard.x, iceShard.y, 1, 1, 0, c_white, invisAlpha);
    }
}

#define DrawFrogAfterImage(disguiseSprite, disguisedImgInd)
{
	if(state != PS_AIR_DODGE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD)
	{
	    for(var i = 0; i < afterImageCount; i++)
			afterImages[i].timer = 9999;
		return;
	}
	
	if(state_timer % 4 == 0)
	{
		var time = state_timer * 0.25;
		var afterImage = afterImages[(time) % afterImageCount];
	
		afterImage.x = x;
		afterImage.y = y;
		afterImage.sprite_index = disguiseSprite;
		afterImage.image_index = disguisedImgInd;
		afterImage.spr_dir = spr_dir;
		afterImage.timer = 0;
	}
	
    for(var i = 0; i < afterImageCount; i++)
    {
        var afterImage = afterImages[i];
        afterImage.timer++;
        var colInd = floor(afterImage.timer / 3);
        var color = make_colour_hsv(56,156,240-49*colInd);
        if(colInd > 3)
            continue;
            
        gpu_set_fog(true, color, 0, 0);
        draw_sprite_ext(afterImage.sprite_index, afterImage.image_index, afterImage.x, afterImage.y, 2 * afterImage.spr_dir, 2, 0, 0, invisAlpha);
    }

    gpu_set_fog(false, c_white, 0, 0);
}


#define printOnPlay(msg)
// if(keyboard_key != keyboard_key_last)
// {
//     if(keyboard_key == 8)//backspace
//     {
//         game_paused = !game_paused;
//         if(game_paused)
//         {
//             play_timer = 0;
//             print("PAUSE");
//         }
//         else
//         {
//             frame_advance = false;
//             print("CONTINUE");
//         }
//     }
// }

// if(frame_advance)
// {
//     frame_advance = false;
//     game_paused = true;
//     print("RE-PAUSE");
// }
// if(game_paused)
// {
//     if(keyboard_key == 13)//enter)
//     {
//         frame_advance = true;
//         game_paused = false;
//         print("ADVANCE");
//     }
// }
if(!get_match_setting( SET_PRACTICE ))
	return;

var gameplay_time = get_gameplay_time();
if(gameplay_time != post_draw_last_gameplay_time)
	ds_map_clear(postDrawMessageMap);
if(gameplay_time != post_draw_last_gameplay_time || !ds_map_exists(postDrawMessageMap, msg))
{
	postDrawMessageMap[? msg] = msg;
	print(msg);
}
post_draw_last_gameplay_time = gameplay_time;
