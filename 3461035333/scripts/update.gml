if !joy_pad_idle last_joy_dir = joy_dir;

if !free and uspec_pratfall_verif {
	set_state(PS_PRATLAND);
}

// Colors palettes exceptions 
var ami_slot = 5;
if get_player_color( player ) == ami_slot 
{
	if sage_mode == 1
	{
		set_color_profile_slot( ami_slot, 2, 249, 249, 249 );
		set_color_profile_slot( ami_slot, 5, 255, 171, 197 );
		
		set_article_color_slot( 2, 249, 249, 249 );
		set_article_color_slot( 5, 255, 171, 197 );
	}
	else 
	{
		set_color_profile_slot( ami_slot, 2, 255, 255, 255 );
		set_color_profile_slot( ami_slot, 5, 74, 55, 83 );
		
		set_article_color_slot( 2, 255, 255, 255 );
		set_article_color_slot( 5, 74, 55, 83 );
	}
}
var reservist_slot = 25;
if get_player_color( player ) == reservist_slot
{
	if sage_mode == 1
	{
		set_color_profile_slot( reservist_slot, 0, 202, 66, 48 ); //hair + glaze
		
		set_article_color_slot( 0, 202, 66, 48 ); //hair + glaze
	}
	else
	{
		set_color_profile_slot( reservist_slot, 0, 50, 44, 43 ); //hair + glaze
		
		set_article_color_slot( 0, 50, 44, 43 ); //hair + glaze
	}
}
var hotshot_for_hire_slot = 26;
if get_player_color( player ) == hotshot_for_hire_slot
{
	if sage_mode == 1
	{
		set_color_profile_slot( hotshot_for_hire_slot, 0, 181, 13, 22 ); //hair + glaze
		set_color_profile_slot( hotshot_for_hire_slot, 3, 255, 203, 150 ); //clothes
		set_color_profile_slot( hotshot_for_hire_slot, 4, 70, 49, 55 ); //headgear
		set_color_profile_slot( hotshot_for_hire_slot, 5, 255, 203, 150 ); //zipper + sleeves
		
		set_article_color_slot( 0, 181, 13, 22 ); //hair + glaze
		set_article_color_slot( 3, 255, 203, 150 ); //clothes
		set_article_color_slot( 4, 53, 25, 30 ); //headgear
		set_article_color_slot( 5, 255, 203, 150 ); //zipper + sleeves
	}
	else
	{
		set_color_profile_slot( hotshot_for_hire_slot, 0, 255, 203, 150 ); //hair + glaze
		set_color_profile_slot( hotshot_for_hire_slot, 3, 156, 0, 12 ); //clothes
		set_color_profile_slot( hotshot_for_hire_slot, 4, 70, 49, 55 ); //headgear
		set_color_profile_slot( hotshot_for_hire_slot, 5, 216, 180, 183 ); //zipper + sleeves
	
		set_article_color_slot( 0, 255, 203, 150 ); //hair + glaze
		set_article_color_slot( 3, 156, 0, 12 ); //clothes
		set_article_color_slot( 4, 97, 71, 81 ); //headgear
		set_article_color_slot( 5, 216, 180, 183 ); //zipper + sleeves
	}
}
var delusional_slot = 28;
if get_player_color( player ) == delusional_slot
{
	if sage_mode == 1
	{
		set_color_profile_slot( delusional_slot, 0, 223, 224, 231 ); //hair + glaze
		set_color_profile_slot( delusional_slot, 1, 253, 236, 224 ); //skin
		set_color_profile_slot( delusional_slot, 2, 223, 224, 231 ); //leggings
		set_color_profile_slot( delusional_slot, 3, 222, 214, 203 ); //clothes
		set_color_profile_slot( delusional_slot, 4, 85, 87, 88 ); //headgear
		set_color_profile_slot( delusional_slot, 5, 222, 214, 203 ); //zipper + sleeves
		set_color_profile_slot( delusional_slot, 6, 222, 214, 203 ); //eye
		set_color_profile_slot( delusional_slot, 7, 240, 234, 199 ); //moontech logo

		set_article_color_slot( 0, 223, 224, 231 );
		set_article_color_slot( 1, 253, 236, 224 );
		set_article_color_slot( 2, 223, 224, 231 );
		set_article_color_slot( 3, 222, 214, 203 );
		set_article_color_slot( 4, 85, 87, 88  );
		set_article_color_slot( 5, 222, 214, 203 );
		set_article_color_slot( 6, 222, 214, 203 );
		set_article_color_slot( 7, 240, 234, 199 ); 
	}
	else //Not sage
	{
		set_color_profile_slot( delusional_slot, 0, 137, 100, 91 ); //hair + glaze
		set_color_profile_slot( delusional_slot, 1, 255, 233, 221 ); //skin
		set_color_profile_slot( delusional_slot, 2, 164, 184, 195 ); //leggings
		set_color_profile_slot( delusional_slot, 3, 237, 237, 237 ); //clothes
		set_color_profile_slot( delusional_slot, 4, 130, 114, 98 ); //headgear
		set_color_profile_slot( delusional_slot, 5, 86, 85, 119 ); //zipper + sleeves
		set_color_profile_slot( delusional_slot, 6, 255, 255, 255 ); //eye
		set_color_profile_slot( delusional_slot, 7, 95, 90, 121 ); //moontech logo

		set_article_color_slot( 0, 137, 100, 91 );
		set_article_color_slot( 1, 255, 233, 221 );
		set_article_color_slot( 2, 164, 184, 195 );
		set_article_color_slot( 3, 237, 237, 237 );
		set_article_color_slot( 4, 130, 114, 98 );
		set_article_color_slot( 5, 86, 85, 119 ); 
		set_article_color_slot( 6, 243, 252, 255 );
		set_article_color_slot( 7, 95, 90, 121 );
	}
}
var ochako_slot = 31;
if get_player_color( player ) == ochako_slot
{
	if sage_mode == 1
	{
		set_color_profile_slot( ochako_slot, 0, 252, 243, 244 ); //hair + glaze
		set_color_profile_slot( ochako_slot, 3, 238, 127, 164 ); //clothes
		set_color_profile_slot( ochako_slot, 4, 23, 60, 70 ); //headgear
		
		set_article_color_slot( 0, 252, 243, 244 ); //hair + glaze
		set_article_color_slot( 3, 238, 127, 164 ); //clothes
		set_article_color_slot( 4, 23, 60, 70 ); //headgear
	}
	else
	{
		set_color_profile_slot( ochako_slot, 0, 137, 72, 39 ); //hair + glaze
		set_color_profile_slot( ochako_slot, 3, 23, 60, 70 ); //clothes
		set_color_profile_slot( ochako_slot, 4, 252, 243, 244 ); //headgear
	
		set_article_color_slot( 0, 137, 72, 39 ); //hair + glaze
		set_article_color_slot( 3, 23, 60, 70); //clothes
		set_article_color_slot( 4, 252, 243, 244 ); //headgear
	}
}

// UI sage/not sage
if (sage_mode == 0)
{
	set_ui_element( UI_HUD_ICON, sprite_get("hud") );
	set_ui_element( UI_HUDHURT_ICON, sprite_get("hud_hurt") );
	set_ui_element( UI_OFFSCREEN, sprite_get("offscreen") );
}
else
{
	set_ui_element( UI_HUD_ICON, sprite_get("hud_sage") );
	set_ui_element( UI_HUDHURT_ICON, sprite_get("hud_hurt_sage") );
	set_ui_element( UI_OFFSCREEN, sprite_get("offscreen_sage") );
}

// force_tp reset
if (state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND)
{
	force_tp = 0;
}

sprite_change_offset("sage_idle", 64, 126);

if (state == PS_DEAD)
{
	if instance_exists(after_image1) after_image1.die_trigger = 1;
}

// Sage Things
if (attack == AT_TAUNT_2 and window == 5 and window_timer == 5)
{
	spawn_hit_fx(x, y, sage_activation_effect);
    sound_play(asset_get("sfx_ori_charged_flame_release"));
    sage_meter += sage_taunt_bonus;
    // Vérifier si le sage_meter dépasse le maximum
    if (sage_meter > sage_meter_max)
    {
        sage_meter = sage_meter_max;
    }
}
if ((sage_meter >= sage_meter_threshold) and sage_mode == 0)
{
    spawn_hit_fx(x, y, sage_activation_effect);
    sound_play(asset_get("sfx_ori_charged_flame_release"));
}
if (sage_meter < sage_meter_threshold) and sage_mode == 1
{
    spawn_hit_fx(x, y, sage_deactivation_effect);
    sound_play(asset_get("sfx_ori_spirit_flame_1"));
}
if (sage_meter >= sage_meter_threshold)
{
	sage_mode = 1;
}
else
{
	sage_mode = 0;
}
sage_meter = clamp(sage_meter,0,sage_meter_max);
if (state == PS_RESPAWN)
{
	sage_meter = 0;
	sage_mode = 0;
}
if was_parried
{
	sage_meter -= 100;
}

//Sage taunt
if (down_down and attack == AT_TAUNT and window <= 1 and window_timer <= 0)
{
	attack = AT_EXTRA_1;
}
else if sage_mode == 1 and (attack == AT_TAUNT) attack = AT_TAUNT_2;

// Zizi partout
if (sage_mode == 1) set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("sage_projectile")) 
else set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("projectile"));

// Dspecial hit fx
if instance_exists(dspec_hitbox)
{
	if (dspec_hitbox.has_hit or dspec_hitbox.was_parried)
	{
		// Create hit effect
	    article2_type = 2;
	    var hit_effect = instance_create(dspec_hitbox.x, dspec_hitbox.y, "obj_article2");
	    instance_destroy(dspec_hitbox);
	}
}

//Nspecial/Dspecial Visuals and Sounds
//Visuals
if free
{
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
}
else
{
	set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 70);
	set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 70);
}
//Sounds
if (state == PS_ATTACK_AIR) and (attack == AT_NSPECIAL) and (window == 1)
{
	if (state_timer mod 19 == 0)
	{
		sound_play(asset_get("sfx_spin"));
	}
}
//Sounds
if (state == PS_ATTACK_AIR) and (attack == AT_DSPECIAL) and (window == 1 and window_timer > 0) 
{
	if (state_timer mod 19 == 0)
	{
		sound_play(asset_get("sfx_spin"));
	}
}

if (state == PS_WALL_JUMP)
{
    //Cooldown resets in walljump
    move_cooldown[AT_USPECIAL] = 0;
    //move_cooldown[AT_FSPECIAL] = 0;
}

if (state == PS_RESPAWN)
{
    //Cooldown at death :skull emoji:
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
}

if (free == 0)
{
    //Cooldown resets on ground
    move_cooldown[AT_USPECIAL] = 0;
    if (state == PS_ATTACK_GROUND)
    {
    	if (attack != AT_FSPECIAL)
    	{
    		move_cooldown[AT_FSPECIAL] = 0;
    	}
    	if (attack != AT_USPECIAL)
    	{
    		move_cooldown[AT_USPECIAL] = 0;
    	}
    }
    else
    {
    	move_cooldown[AT_FSPECIAL] = 0;	
    	move_cooldown[AT_USPECIAL] = 0;
    }
}

if (state == PS_HITSTUN) or (state == PS_HITSTUN_LAND)
{
	force_tp = 0;
	nspec_press_tp_buffer = false;
    //Cooldown resets when hit
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_FSPECIAL] = 0;
    
    //Kill down b projectile
    if instance_exists(dspec_hitbox)
    {
    	instance_destroy(dspec_hitbox);
    }
}

//Char height
if (state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)
{
	if (attack == AT_USTRONG)
	{
		if (window == 3) or (window == 4 and window_timer < 11)
		{
			char_height = 105;	
		}
		else
		{
			char_height = normal_char_height;
		}
	}
	if (attack == AT_UAIR)
	{
		if (window == 2 and window_timer > 2) or (window == 3 and window_timer < 10)
		{
			char_height = 90;	
		}
		else
		{
			char_height = normal_char_height;
		}
	}
	if (attack == AT_UTILT)
	{
		if (window == 2 and window_timer > 1) or (window == 3 and window_timer < 7)
		{
			char_height = 90;	
		}
		else
		{
			char_height = normal_char_height;
		}
	}
}
else
{
	char_height = normal_char_height;
}

if (special_down)
{
	special_down_timer++;
}
else
{
	special_down_timer = 0;
}

if (left_strong_down or right_strong_down or up_strong_down or down_strong_down)
or (left_strong_pressed or right_strong_pressed or up_strong_pressed or down_strong_pressed)
or (strong_down)
{
	strong_down_timer++;
}
else
{
	strong_down_timer = 0;
}

if (state != PS_ATTACK_AIR) or (state != PS_ATTACK_GROUND)
{
	special_cancel = 0;
}

if !instance_exists(after_image1)
{
    trigger_down_special = 0;
    trigger_fake_down_special = 0;
}

if (state == PS_PRATFALL) or (state != PS_ATTACK_AIR) //attack_update.gml manages some other stuff regarding pratfall verif
{
	uspec_pratfall_verif = 0;
	uspec_pratfall_attack = 0;
}

if (trigger_down_special == 1)
{
    if instance_exists(after_image1) and after_image1.dspec_launch_timer > 0
    {
    	with (after_image1)
    	{
    		if (dspec_launch_timer == dspec_launch_time)
    		{
    			dspec_target_dir = player_id.dspec_angle;
    			dspec_target_spr_dir = player_id.spr_dir;
    		}
    		if (player_id.trigger_fake_down_special == 0)
    		{
		    	dspec_launch_timer--;
		        if (player_id.sage_mode == 1) sprite_index = sprite_get("sage_projectile_start_up") else sprite_index = sprite_get("projectile_start_up");
		        image_speed = 0;
		        image_index = 0;
		        lifetime = max_lifetime;
		        state = 2;
    		}
    		else /// bitax
    		{
    			if (player_id.sage_mode == 1) sprite_index = sprite_get("sage_projectile_start_up") else sprite_index = sprite_get("projectile_start_up");
		        image_speed = 0;
		        image_index = 0;
		        dspec_launch_timer--;
    		}
    	}
    }
    if (after_image1.dspec_launch_timer == 0)
    {
    	if (trigger_fake_down_special == 0)
    	{
    		after_image1.visible = 0;
	        var dspec_dir = after_image1.dspec_target_dir;
	        last_dspec_angle = dspec_dir;
	        last_dspec_spr_dir = after_image1.dspec_target_spr_dir;
	        
	        var h_speed = (18 * cos(degtorad(dspec_dir))) * spr_dir;
	        var v_speed = (-18 * sin(degtorad(dspec_dir)));
	        
	        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, h_speed);
	        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, v_speed);
	        
	        if (after_image1.dspec_target_spr_dir == 1)
	        {
	        	set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, dspec_dir);
	        }
	        else
	        {
	        	var new_dspec_dir = dspec_dir;
	        	new_dspec_dir -= (dspec_dir - 90) * 2;
	        	set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, new_dspec_dir);
	        }
	        
	        dspec_hitbox = create_hitbox(AT_DSPECIAL, 1, after_image1.x, after_image1.y-40);
	        
	        dspec_hitbox.spr_dir = after_image1.dspec_target_spr_dir;
	        dspec_hitbox.image_speed = 1;
	        
	        // Drawing things "correctly"
	        if (dspec_hitbox.spr_dir == 1)
	        {
	        	dspec_hitbox.draw_xscale = dspec_hitbox.spr_dir;
	        }
	        else
	        {
	        	dspec_hitbox.draw_xscale = -dspec_hitbox.spr_dir;
	        }
	        dspec_hitbox.proj_angle = dspec_dir;
	        
	        trigger_fake_down_special = 0;
	        trigger_down_special = 0;
	        after_image1.lifetime = 0;
    	}
    	else
    	{
    		if sage_mode == true
    		{
    			after_image1.sprite_index = sprite_get("sage_fes");
    		}
    		else
    		{
    			after_image1.sprite_index = sprite_get("fes");
    		}
    		sound_play(sound_get("vine-boom"));
    		trigger_fake_down_special = 0;
    		trigger_down_special = 0;
    		after_image1.dspec_launch_timer = after_image1.dspec_launch_time;
    	}
    }
}

if (was_parried) or (state == PS_RESPAWN)
{
    if instance_exists(after_image1)
    {
        after_image1.lifetime = 0;
    }
}

// After images
var no_after_images_pls = (attack == AT_FSTRONG and window >= 3);
if (abs(hsp) > sonic_boom_threshold) and !no_after_images_pls
{
	if (state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR)
	{
		if (state != PS_HITSTUN and state != PS_HITSTUN_LAND)
		{
			if (state_timer mod 8 == 0) and state_timer > 0
			{
				article2_type = 1;
				var after_image = instance_create(x, y, "obj_article2");
			}
		}
	}
}

// Make uspec_smear follow player
if instance_exists(uspec_smear)
{
	uspec_smear.x = x+2;
	uspec_smear.y = y-32;   
	uspec_smear.hsp = hsp;
	uspec_smear.vsp = vsp;	
}
// Slow motion mode 
/*
	sage_meter = 700
	if (attack_pressed and special_pressed)
	{
		slow_motion_mode = 1;
	}
	if (attack_pressed and shield_pressed)
	{
		slow_motion_mode = 0;
	}
	
	if (slow_motion_mode == 1)
	{
		room_speed = 60/4;
	}
	else
	{
		room_speed = 60;
	}
*/

// Mark
if mark_meter > 0
{
	mark_meter--;
}

// Sage skin
if (sage_mode == 1) and (get_skin() == -1)
{
	set_skin("sage");
}
if (sage_mode == 0) and (get_skin() == 0)
{
	set_skin(-1);
}

#define get_skin()
///Gets the active skin. -1 when no skin is active.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active;
}
return _ssnksprites.skin_active;

#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        if argument[0] in _ssnksprites.skins {
            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
        }
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}
 