//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// if (attack == AT_FSPECIAL && window == 1 && window_timer == 1)
// {
// 	if(cloneChar != noone)
// 		instance_destroy(cloneChar);
// 	cloneChar = instance_create(x, y, "oPlayer");
// 	cloneChar.custom_clone = true;
// 	// cloneChar.disable_ai = false;
// 	// cloneChar.ai_target = player;
// 	//TODO: why clone crashed on reload??? oh "clone" is an actually reserved variable...
// 	//TODO: easy way to make the clone move?
	
// 	//with (etalus)
// 	//	instance_create(oPlayer);
// }
/*
if (attack == AT_JAB && window == 1 && window_timer == 1 && cloneChar != noone)
{
	var tempX = cloneChar.x;
	var tempY = cloneChar.y;
	cloneChar.x = x;
	cloneChar.y = y;
	x = tempX;
	y = tempY;
	//-> doesnt feel very spy?
}*/


if(attack == AT_DATTACK)
{
	if(!hitpause && !free)
	{
		if(window == 2 && window_timer == 1)
			spawn_base_dust(x+32*spr_dir, y, "dash_start");
		if(((window == 2 && window_timer > 1) || window == 3) && window_timer % 4 == 0)
			spawn_base_dust(x-10*spr_dir, y, "dash");
	}
	
	if(window == 4 || (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1))
	{
		if(up_pressed || attack_pressed || special_pressed || jump_pressed || shield_pressed || taunt_pressed)
		{
			window++;
			if(sprite_index == sprite_get("boxWalk"))
				window_timer = 4;
			else
				window_timer = 0;
			if(window == 5)
				sound_play(sound_get("cardboard-box-up"));
		}
	}

	if(window == 4)
		hurtboxID.sprite_index = sprite_get("box_box");
	
	if(window == 4 && !free)
	{
		var moveDir = 0;
		if(right_down)
			moveDir++;
		if(left_down)
			moveDir--;
		hsp = moveDir * 2.5;
		go_through = true;
	}
}

if(attack == AT_DAIR)
{
	// if(down_down)
	// 	fall_through = true;
	can_fast_fall = false;

	if(window == 1)
		dairHitPlayer = false;
	if(((!attack_down && !strong_down) || dairHitPlayer) && window == 3 && window_timer > 7)
	{
		window_timer = 0;
		window++;
	}
	if(has_hit && !dairHitPlayer)
	{
		dairHitPlayer = true;
		old_vsp = -8;
		old_hsp = -hit_player_obj.old_hsp*0.5;
	}
}

if(attack == AT_FTILT)
{
	if(window == 1 && window_timer == 1)
		backstabSuccess = noone;
		
	if(backstabSuccess == noone)
	{
	    with(oPlayer)
			spr_dir_last_bs = spr_dir;
	}
}


if (attack == AT_DSPECIAL)
{
	soft_armor = 6;
}

if (attack == AT_USPECIAL)
{
	can_wall_jump = window > 4;
	can_fast_fall = false;
	if(down_down)
		fall_through = true;
		
    if (window == 1 && window_timer == 1)
    {
    	if(free)
		{
			vsp = min(vsp, 2);
			vsp = max(vsp, -4);
		}
        times_through = 0;
		descending = false;
    }
    if (window == 4 && window_timer == 1)
	{
		vsp = -8;
		spawn_base_dust(x, y, free ? "doublejump" : "jump");
	}
    if (window == 5)
    {
    	var total_timer = window_timer-1 + times_through * get_window_value(attack, window, AG_WINDOW_LENGTH);
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
            times_through++;
        	
        	
        if(vsp > 0)
        	descending = true;
        	
    	if(descending)
    	{
	        if (down_down)
	            vsp += 0.6;
	        if (up_down)
	            vsp -= 0.3;
	            
	        var fly_dir = point_direction(0,0,hsp,vsp);
	        var maxVsp = 6;
	        if (vsp > maxVsp)
	            vsp = lengthdir_y(maxVsp, fly_dir);
	        if (vsp < 0)
	            vsp = 3;
    	}
		else
		{
	        if (down_down)
	            vsp += 0.1;
		}
        
        
        if(total_timer > 10)
        {
        	// can_jump = true;
        	//can_attack = true;//TODO: allow this but only once?
	        if (!free || special_pressed || attack_pressed || shield_pressed)
	        {
	            window = 6;
	            window_timer = 0;
	        }
        }
        // if (special_pressed && times_through > 0){
        //     window = 6;
        //     window_timer = 0;
        // }
        // if (shield_pressed){
        //     window = 4;
        //     window_timer = 0;
        // }
    }
    // if (window > 6 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    //     window++;
    //     window_timer = 0;
    // }
    if(!free && window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) * get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) * 1.5)
	{
		state = PS_IDLE;//PS_PRATLAND;
		state_timer = 0;
	}
}


if(attack == AT_FSPECIAL)
{
	if(window == 1 && window_timer == 1)
	{
		shotCounter = 0;
		didShootCrit = false;
		set_up_fspecial();
	}

	if(special_down && window > 2 &&
		(joy_pad_idle
		|| ((spr_dir == 1 && (joy_dir > 270+45 || joy_dir < 90-45))
		|| (spr_dir == -1 && (joy_dir < 270-45 && joy_dir > 90+45)))))
		continueShooting = true;

	if(continueShooting && window == 4 && window_timer > get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH)-1 && shotCounter < 6)
	{
		set_up_fspecial();
		window = 2;
		window_timer = 0;
	}
	if(window == 2 && window_timer == get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH)-1)
	{
		var damageVfx = spawn_hit_fx(x+42*spr_dir, y-62, 14);//TODO: make custom muzzles
		damageVfx.draw_angle = random_func(0, 90, false) * spr_dir - 45 * spr_dir;
		// damageVfx.image_speed = 10;
	}
}
else
	shotCounter = 0;


#define set_up_fspecial()
{
	continueShooting = false;
	shotCounter++;

	if(crits > 0)
	{
		crits--;
		didShootCrit = true;
		
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.6);
		set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletProjectileCrit"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("crit_hit"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);

		// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_01_crit"));
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_0"+string(random_func(0, 3, true)+1)+"_crit"));
	}
	else
	{
		set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
		set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bulletProjectile"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("hitsound"));
		set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);

		// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_01"));
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("diamond_back_0"+string(random_func(0, 3, true)+1)));
	}
	
	if(didShootCrit)
	{
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
	}
	else
	{
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
	}

	set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
	if(shotCounter == 6)
	{
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 18);
	}
}

//https://github.com/SupersonicNK/roa-workshop-templates/blob/master/snippets/spawn_base_dust.md
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;