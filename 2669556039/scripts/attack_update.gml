// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL)
{
	can_fast_fall = false;
	if(down_down)
	{
		//free = true; //TODO: could make it possible to fall through after already landed
		fall_through = true;
	}
	//if(window == 2)
	//	can_shield = true;
	if(window == 2 && (attack_down || shield_down))
	{
		window = 3;
		window_timer = 0;
        dspecialAirTimer = 0;
		dspecialTimer = dspecialTimerMin;
        dspecialProjSpd = ease_linear(10, 27, dspecialTimer, dspecialTimerMax);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, lengthdir_x(dspecialProjSpd, dspecialAngle+90) * spr_dir);
		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, lengthdir_y(dspecialProjSpd, dspecialAngle+90));
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, ease_linear(2, 8, dspecialTimer, dspecialTimerMax));
		set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, ease_linear(2, 8, dspecialTimer, dspecialTimerMax));
		var feedbackEase = floor(ease_linear(1, 3, dspecialTimer, dspecialTimerMax));
		if(feedbackEase == 1)
		{
			set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
		}
		if(feedbackEase == 2)
		{
			set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
		}
		if(feedbackEase == 3)
		{
			set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
		}//TODO: merge with below
	}
	
    if(window == 1 && window_timer == 1)
    {
        dspecialTimer = 0;
        dspecialAngle = 0;
    }
    
    if(window == 2)
    {
        dspecialAirTimer = 0;
        dspecialTimer++;
        if(dspecialTimer > dspecialTimerMax || (!special_down && dspecialTimer > dspecialTimerMin))
        {
            window = 3;
            window_timer = 0;
            dspecialProjSpd = ease_linear(10, 27, dspecialTimer, dspecialTimerMax);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, lengthdir_x(dspecialProjSpd, dspecialAngle+90) * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, lengthdir_y(dspecialProjSpd, dspecialAngle+90));
			set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, ease_linear(2, 8, dspecialTimer, dspecialTimerMax));
			set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, ease_linear(2, 8, dspecialTimer, dspecialTimerMax));
			var feedbackEase = floor(ease_linear(1, 3, dspecialTimer, dspecialTimerMax));
			if(feedbackEase == 1)
			{
				set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
				set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
			}
			if(feedbackEase == 2)
			{
				set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
				set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 302);
			}
			if(feedbackEase == 3)
			{
				set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
				set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
			}//TODO: merge with above
        }
    }
    else
    	dspecialAirTimer++;//more dmg the longer traveled & charged

    
    //rotate to aim
    if(window == 1 || window == 2)
    {
        dspecialAngle += left_down * dspecialTurnSpd;
        dspecialAngle -= right_down * dspecialTurnSpd;
    }
    else if(instance_exists(head))
    	dspecialAngle = point_direction(x+headX*spr_dir, y+headY, head.x, head.y) - 90;
    	
    if(instance_exists(head))//window != 1 && window != 2 && window != 3 && window != 10)
    {
    	var offsetX = lengthdir_y(48, dspecialAngle)*spr_dir;
    	var offsetY = lengthdir_x(48, dspecialAngle);
    	
		//hurtboxID.image_index = 1;//why cant change image index to set length???
		//hurtboxID.sprite_index = sprite_get("test");//this works tho... so use multiple sprites
		var headDirX = head.x - x+headX*spr_dir;
		var headDirY = head.y - y+headY;
        var length = sqrt(headDirX * headDirX + headDirY * headDirY);
        length = min(max(floor(length * 0.0125), 1), 5);
		hurtboxID.sprite_index = sprite_get("dspecial_neck_hurt"+string(length));
		sprite_change_offset("dspecial_neck_hurt"+string(length), floor(48*2+offsetX), floor(478+80+offsetY));
    	hurtboxID.image_angle = dspecialAngle;
	}
    else
    	hurtboxID.image_angle = 0;
    
    if(window == 4 && window_timer == 1)
    {
		//spawn_base_dust(x, y, "jump");
		spawn_base_dust_angled(x-3*spr_dir, y-48, "doublejump", dspecialAngle);
    }
    
    if(window == 4 && window_timer == 1 && free)
    	vsp = -4;
    
    if(window == 4 && window_timer == 1)
    {
    	head = instance_create(x+headX*spr_dir, y+headY, "obj_article1");
		head.hsp = lengthdir_x(dspecialProjSpd, dspecialAngle+90);
		head.vsp = lengthdir_y(dspecialProjSpd, dspecialAngle+90);
    }
    /*if(window == 5 && attack_down)
    {
    	window = 6;
    	window_timer = 0;
    }*/
    //set window 6 on hit enemy
    if(window >= 6 && window < 9)
    {
	    head.hsp *= 0.5;
	    head.vsp *= 0.5;
    }
	if(window == 7)
	{
	    with (pHitBox) 
	        destroyed = true;//destroy hitboxes bcz wall behaviour doesnt stop them?
	}
    if(window >= 9 && window < 10)
    {
		head.hsp = (x+headX*spr_dir - head.x) * 0.1;
		head.vsp = (y+headY - head.y) * 0.1;
    }
    
    if(window == 10 && window_timer == 1)
    	instance_destroy(head);
    
    if(window <= 2)
    	soft_armor = 6;
    else if(window == 3)
    	soft_armor = 8;
	else if(instance_exists(head))
		soft_armor = 1000000000; //TODO: instead just dont play hurt animation?
	else
		soft_armor = 0;
	if(window > 3 && doDspecialKnockback && !instance_exists(head))
	{
		doDspecialKnockback = false;
    	create_hitbox(AT_DSPECIAL, 2, x, y - 48);
	}
}


if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_EXTRA_1 || attack == AT_EXTRA_2)
{
	if(attack == AT_NSPECIAL && window == get_hitbox_value(attack, 1, HG_WINDOW) && window_timer == get_hitbox_value(attack, 1, HG_WINDOW_CREATION_FRAME)-1)
		spawn_hit_fx(x, y-48, 143);
	if(attack == AT_NSPECIAL_2 && window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause)
		spawn_hit_fx(x, y-48, 66);//117 120
	if(attack == AT_EXTRA_1 && window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause)
		spawn_hit_fx(x, y-48, 129);//130 67 197 157
	if(attack == AT_EXTRA_2 && window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause)
		spawn_hit_fx(x, y-48, 198);
		
	if(attack == AT_NSPECIAL)
	{
		soft_armor = 6;
		nspecialAvailable = false;
	}
	
	if(attack == AT_EXTRA_2)
	{
		if(window == 1 && window_timer == 1)
			drainCanHit = true;
		if(has_hit_player && window > 2 && drainCanHit)
		{
			drainCanHit = false;
			var horDir = hit_player_obj.x - x;
			var vertDir = hit_player_obj.y - y;
			old_hsp = sign(horDir) * ease_linear(0, 2, abs(horDir), 100) * 3;
			old_vsp = sign(vertDir) * ease_linear(0, 2, abs(vertDir), 100) * 3; 
		}
	}
	
	if(attack == AT_NSPECIAL_2)
	{
		if(ds_list_size(toxicArticles) < toxicArticleMax && window == 3 && window_timer == get_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME) && !hitstop)
		{
    		var toxicArticle = instance_create(x, y-48, "obj_article3");
	    	ds_list_add(toxicArticles, toxicArticle);
		}
	}
}

if(attack == AT_FSPECIAL)
{
	if(window == 2 && window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH))
	{
		var dirY = -1;
		if(down_down)
			dirY += 1;
		if(up_down)
			dirY -= 1;
			
		var dirX = 0;
		if(down_down)
			dirX -= 0.5;
		if(up_down)
			dirX -= 1;
			
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10 + 3 * dirX);
		set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 8 * dirY);
			
		if((spr_dir == -1 && right_down)
		||(spr_dir == 1 && left_down))
		{
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -16);
		}
	}
	//TODO: if held longer can charge to go further
}


if(attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)
{
	can_wall_jump = true;
	if(window == 1 && window_timer == 1)
	{
		uspecialTimer = 0;
		hit_count = 0;
	}
	if(window == 3)
	{
		uspecialTimer++;
		if((uspecialTimer >= 10 && !special_down)
		|| (attack == AT_USPECIAL && uspecialTimer >= 120)
		|| (attack == AT_USPECIAL_GROUND && uspecialTimer >= 60)
		|| (attack == AT_USPECIAL && hit_count >= 6)
		|| (attack == AT_USPECIAL_GROUND && hit_count >= 3))
		{
			window = 4;
			window_timer = 0;
			//if(hit_count >= 3 && attack == AT_USPECIAL) //TODO: dont stop so abrupt... its the hitstop?
			//	vsp -= 100;
		}
	}
}

if(attack == AT_USPECIAL)
{
	move_cooldown[AT_USPECIAL] = 10000;
	if(window == 1)
		vsp -= 1;
	if(window == 2)
		vsp -= 2;
	if(window == 3)
	{
		vsp -= 6;
		hsp = sign(hsp) * min(abs(hsp), 4);
	}
	if(window < 4)
		vsp = max(vsp, -6);
}

if(attack == AT_USPECIAL)
{
	if(window == 3 && window_timer == 1)
		spawn_base_dust_angled(x, y-16, "djump", uspecialAngle);
}

if(attack == AT_USPECIAL_GROUND)
{
	if(window == 3)
		hsp += spr_dir * 1;
	if(window > 2 && window < 4)
		hsp = spr_dir * min(abs(hsp), 1);
		
	if(window == 3 && window_timer == 1)
		spawn_base_dust(x, y, "land");
}


if(attack == AT_DTILT)
{
    if(window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH))
		spawn_base_dust_spr_dir(x + spr_dir * 20, y, "wavedash", -spr_dir);
}

if(attack == AT_FTILT)
{
    if(window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH))
		spawn_base_dust(x, y, "wavedash");
		
    if(window > 2 && !free && freeLast)
		spawn_base_dust(x, y, "land");
}

if(attack == AT_DAIR)
{
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
		spawn_base_dust(x, y, "doublejump");
		
    if(window == 3 && window_timer == 1)
		spawn_base_dust(x, y, "land");
}

if(attack == AT_BAIR)
{
    if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
    {
    	if(spr_dir == 1)
			spawn_base_dust_angled(x - 32, y - 48, "doublejump", 90);
		else
			spawn_base_dust_angled(x + 32, y - 48, "doublejump", 270);
    }
}

if(attack == AT_DATTACK)
{
    if(window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH))
		spawn_base_dust(x, y, "wavedash");//jump
		
    if(window > 3 && !free && freeLast)
		spawn_base_dust(x + spr_dir * 6, y, "land");

    if(window == 2 && window_timer == 4)
		hb = create_hitbox(attack, 2, x, y);
	if(window == 5 && instance_exists(hb))
        hb.destroyed = true;
        
	if(window == 4 && state_timer > 50)
	{
		if(up_down && special_down)
			set_attack(AT_USPECIAL);
		can_jump = true;
	}
}

if(attack == AT_JAB)
{
    if(window == 2 && window_timer == 3)
		spawn_base_dust(x + spr_dir * 32, y, "land");
		//spawn_base_dust(x + spr_dir * 32, y, "doublejump");
}

if(attack == AT_DAIR)
{
    //if(window == 2 && window_timer == 1 && (!instance_exists(hb2) || hb2 == noone))
    if(window == 1 && window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH))
		hb2 = create_hitbox(attack, 1, x, y);
	if(window == 3 && instance_exists(hb2))
        hb2.destroyed = true;
    	
	can_fast_fall = false;
	if(down_down)
		fall_through = true;
		
	if(window == 2 && state_timer > 45)
	{
		if(up_down && special_down)
			set_attack(AT_USPECIAL);
		if(jump_down)
			quit_dair(-12);
		can_jump = true;//doesnt work?
	}
	if(window == 2 && has_hit_player && !hitpause)
		quit_dair(-10);
}

if(attack == AT_BAIR)
{
	if(window == 1)
	{
		hsp *= 0.9;
		vsp *= 0.85;
	}
	if(window > 2 && window < get_attack_value(AT_BAIR, AG_NUM_WINDOWS))// && window_timer % 2 == 0)
	{
		set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, random_func(0, 1, false) * 0.1 + 0.1);
		var proj = create_hitbox(attack, 3, x-64*spr_dir, y-32);
		proj.hsp = -spr_dir * random_func(0, 2, false);
		proj.vsp = -2-random_func(1, 2, false);
		proj.image_index = random_func(0, 7, true);
		//TODO: in update make em go up & down like actual leaves + fade at end (also on floor?)
	}
}

if(attack == AT_DSTRONG)
{
	//if(window == 3 && window_timer == 1)
	/*if(window == 2 && window_timer == 1)
	{
    	var fxL = spawn_hit_fx(x-0, y-16, 303);
    	var fxR = spawn_hit_fx(x+0, y-16, 303);
	    fxL.spr_dir = 1;
	    fxR.spr_dir = -1;
	}*/
	if(window == 3 && window_timer == 1)
		spawn_base_dust(x, y, "land");
}

if(attack == AT_FSTRONG)
{
	if(window == 1 == window_timer == 1)
		fstrongTimer = 0;
	if(window == 1 && fstrongTimer % 4 == 0)
	{
		var spawnDirX = random_func(0, 200, true) - 100;
		var spawnDirY = random_func(1, 200, true) - 100;
        var length = sqrt(spawnDirX * spawnDirX + spawnDirY * spawnDirY);
        spawnDirX = (spawnDirX/length);
        spawnDirY = (spawnDirY/length);
		var proj = create_hitbox(attack, 6, x-floor(spawnDirX*100), y-64-floor(spawnDirY*100));
		proj.hsp = spawnDirX * 10;
		proj.vsp = spawnDirY * 10;
	}
	fstrongTimer++;
}

if(attack == AT_USTRONG)
{
	if(window == 1)
	{
		if(window_timer == 1)
			ustrongTimer = 0;
		ustrongTimer++;
	}
	if(window == 2 && window_timer == 1 && ustrongTimer == 72)
	{
		var dir = 0;
		if(right_down) dir += 1;
		if(left_down) dir -= 1;
		set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, dir * 2 * spr_dir);
		create_hitbox(attack, 3, x, y);
	}
}

if(attack == AT_TAUNT)
{
	//iasa_script();
	if(!taunt_down)
		window = 2;
}


//if (attack == AT_BAIR && window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
//	sound_play(asset_get("sfx_blink_dash"));
	
if (attack == AT_USTRONG && window == 1)
{
	if(window_timer == 1)
		canStrongSound = true;
	if(canStrongSound &&  !strong_down)
	{
		canStrongSound = false;
		sound_play(asset_get("sfx_charge_blade_swing"));//sfx_shovel_swing_heavy2
	}
	if(strong_charge == 59)
	{
		sound_play(asset_get("sfx_rag_axe_swing"));
		sound_play(asset_get("sfx_charge_blade_swing"));//sfx_shovel_swing_heavy2
	}
}
if (attack == AT_DSTRONG)
{
	if(window == 1)
	{
		if(window_timer == 1)
			canStrongSound = true;
		if((canStrongSound && !strong_down) || strong_charge == 59)
		{
			canStrongSound = false;
			sound_play(asset_get("sfx_abyss_seed_land"));
		}
	}
	if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1)
		sound_play(asset_get("sfx_abyss_seed_explode"));
		
	if(window == 6 && window_timer == 1)
		sound_play(asset_get("sfx_abyss_seed_fall"));
}

if (attack == AT_FSTRONG)
{
	if(window == 1 && window_timer == 1)
	{
		didFstrong = true;
		sound_play(asset_get("sfx_boss_final_charge"));
	}
	if(window == 2 && window_timer == 1)
		sound_stop(asset_get("sfx_boss_final_charge"));
}

if (attack == AT_USPECIAL)
{
	if(window == 2 && window_timer == 1)
		canUspecialSound = true;
	if(window == 3 && window_timer == 1)
	{
		if(canUspecialSound)
			sound_play(asset_get("sfx_shovel_swing_light1"));//TODO: make also play in hitpause
		canUspecialSound = !canUspecialSound;
	}
	if(window == 4 && window_timer == 1 && !hitpause)
		sound_play(asset_get("sfx_shovel_swing_heavy1"));
}
if (attack == AT_USPECIAL_GROUND)
{
	if(window == 3 && window_timer == 1)
	{
		sound_play(asset_get("sfx_shovel_swing_light2"));//TODO: make also play in hitpause
	}
	if(window == 4 && window_timer == 1 && !hitpause)
		sound_play(asset_get("sfx_shovel_swing_heavy1"));
}


freeLast = free;

#define quit_dair(addVsp)
spawn_base_dust(x, y, "doublejump");
vsp = addVsp;
state = PS_DOUBLE_JUMP;
attack_end();
if(instance_exists(hb2))
    hb2.destroyed = true;
		    
#define spawn_base_dust(x, y, name)
	spawn_base_dust_angled_spr_dir(x, y, name, 0, 0);
	
#define spawn_base_dust_spr_dir(x, y, name, dir)
	spawn_base_dust_angled_spr_dir(x, y, name, dir, 0);
	
#define spawn_base_dust_angled(x, y, name, angle)
	spawn_base_dust_angled_spr_dir(x, y, name, 0, angle);

//https://github.com/SupersonicNK/roa-workshop-templates/blob/master/snippets/spawn_base_dust.md
//#define spawn_base_dust
#define spawn_base_dust_angled_spr_dir(x, y, name, dir, angle)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
//#args x, y, name, dir = 0

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
newdust.draw_angle = angle; //dfa;
return newdust;
