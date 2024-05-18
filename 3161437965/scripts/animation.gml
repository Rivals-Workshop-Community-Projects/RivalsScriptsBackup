//animation.gml

//afterimage code
if (uses_afterimage_trail && trail_draw_size < trail_size) trail_draw_size ++;
else if (!uses_afterimage_trail && trail_draw_size > 1) trail_draw_size --;

trail_cycle --;
if (trail_cycle < 0) trail_cycle = trail_size-1;

trail_vars[trail_cycle].spr = sprite_index;
trail_vars[trail_cycle].img = image_index;
trail_vars[trail_cycle].x = x;
trail_vars[trail_cycle].y = y;
trail_vars[trail_cycle].xscale = image_xscale;
trail_vars[trail_cycle].yscale = image_yscale;
trail_vars[trail_cycle].rot = spr_angle;

//set skin to frisk
if ("_ssnksprites" in self)
{
	if (cur_skin == 1 && get_skin() != 0) set_skin("f"); //set frisk skin

	if (has_skin("f")) //set frisk skin animations
	{
		sprite_index = skin_sprite(sprite_index); //get the skinned sprite
		basic_animations(); //correct the idle, walk, and dash animations
	}
}

//hurt sprites fix
if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)
{
	hurt_img = 1;
	sprite_index = sprite_get_skinned("hurt_crystalized"); //this has to be using small sprites
	small_sprites = 1;
}
else small_sprites = 0;
if (state == PS_FLASHED || state == PS_FROZEN || state == PS_BURIED) sprite_index = sprite_get_skinned("hurt");

if(state == PS_SPAWN && !hitpause && !has_spawned){
	if(cur_skin != 1){
		if(state_timer < 30){
			sprite_index = asset_get("empty_sprite");
			hud_offset = 99999;
		}
		if(state_timer > 50 && state_timer < 85 && state_timer%10 == 5){
			sound_play(sound_get("sfx_sans_click"));
		}
		if(state_timer >= 50 && state_timer < 85 && state_timer%10 >= 5 &&  state_timer%10 <= 7){
			sprite_index = (cur_skin == 1 ? sprite_get("f_fspecial") : sprite_get("fspecial"));
			image_index = 2;
			hud_offset = 99999;
		} else if(state_timer >= 30 && state_timer < 85){
			sprite_index = asset_get("empty_sprite");
			hud_offset = 99999;
		}
	} else {
		if(state_timer < 85){
			sprite_index = asset_get("empty_sprite");
			hud_offset = 99999;
		}
	}
	if(state_timer == 85){
		spawn_hit_fx(x, y - char_height/2, fx_load);
		sound_play(asset_get("mfx_star"))
		if juiced_up sound_play(sound_get("sfx_strong_hit"))
	}
	if(state_timer >= 85 && state_timer <= 98){
		sprite_index = (cur_skin == 1 ? sprite_get("f_dspecial") : sprite_get("dspecial"));
		image_index = 11 + (state_timer-85)/5;
	}
}


#define sprite_get_skinned()
{
	var sprite = argument[0];
var skin = argument_count > 1 ? argument[1] : _ssnksprites.skin_active;

	///Gets a skinned sprite based on its name.
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj if (_ssnksprites.skin_active != -1 || argument_count > 1)  {
		
		var skindata = argument_count > 1 ? -1 : _ssnksprites.skins_n[_ssnksprites.skin_active];
		if is_string(skin) {
			if skin in _ssnksprites.skins skindata = variable_instance_get(_ssnksprites.skins, skin);
			else print(`Skin ${skin} not found.`);
		} else if is_number(skin) {
			if skin < array_length(_ssnksprites.skins_n) skindata = _ssnksprites.skins_n[skin];
			else print(`Skin ${skin} not found.`);
		}
		if !is_array(skindata) return sprite_get(sprite);
		var skinname = skindata[0];
		var suffix = skindata[1];
		var name_raw = skindata[2];
		var cache = variable_instance_get(_ssnksprites.cache,name_raw, -1);
		var spr;
		if sprite in cache return variable_instance_get(cache,sprite);
		spr = sprite_get(sprite);
		
		if string(spr) in _ssnksprites.names {
			var sproot = sprite_get(`${suffix? //if suffix
										sprite+skinname: //suffix
										skinname+sprite}`); //prefix
			if sproot == asset_get('net_disc_spr') { //no X allowed
				variable_instance_set(cache,sprite,spr);
				return spr;
			}
			if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
				sprite_change_offset(sproot,sprite_get_xoffset(spr),sprite_get_yoffset(spr));
			}
			variable_instance_set(cache,sprite,sproot); //put sprite in cache
			return sproot;
		} else {
			variable_instance_set(cache,sprite,spr);
			return spr;
		}
	}
	return sprite_get(sprite);
}
#define skin_sprite()
{
	var spr_index = argument[0];
var skin = argument_count > 1 ? argument[1] : _ssnksprites.skin_active;

	///Gets a skinned sprite by its unskinned sprite index.
	var str = `${spr_index}`;
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj if (_ssnksprites.skin_active != -1 || argument_count > 1)  {
		var skindata = argument_count > 1 ? -1 : _ssnksprites.skins_n[_ssnksprites.skin_active];
		if is_string(skin) {
			if skin in _ssnksprites.skins skindata = variable_instance_get(_ssnksprites.skins, skin);
			else print(`Skin ${skin} not found.`);
		} else if is_number(skin) {
			if skin < array_length(_ssnksprites.skins_n) && skin >= 0 skindata = _ssnksprites.skins_n[skin];
			else print(`Skin #${skin} out of bounds.`);
		}
		if !is_array(skindata) return(spr_index);
		var skinname = skindata[0];
		var suffix = skindata[1];
		var name_raw = skindata[2];
		var cache = variable_instance_get(_ssnksprites.cache,name_raw, -1);
		if (str in cache) return variable_instance_get(cache,str);
		if (str in _ssnksprites.names) {
			var sprname = variable_instance_get(_ssnksprites.names,str);
			//var sproot = sprite_get(`${variable_instance_get(_ssnksprites.names,str)+_ssnksprites.skins[_ssnksprites.skin_active]}`);
			var sproot = sprite_get(`${suffix? //if suffix
										sprname+skinname: //suffix
										skinname+sprname}`); //prefix
			if sproot == asset_get('net_disc_spr') { //no X allowed
				variable_instance_set(cache,str,spr_index);
				return spr;
			}
			if sprite_get_xoffset(sproot) == 0 && sprite_get_yoffset(sproot) == 0 {
				sprite_change_offset(sproot,sprite_get_xoffset(spr_index),sprite_get_yoffset(spr_index));
			}
			variable_instance_set(cache,str,sproot); //put sprite in cache
			return sproot;
		} else {
			variable_instance_set(cache,str,spr_index);
			return spr_index;
		}
	}
	return spr_index;
}
#define basic_animations()
{
	/// Run this after changing the sprite_index.
	// Corrects certain animations to be how they normally would be.
	switch (state){
		case PS_IDLE:
		case PS_RESPAWN:
		case PS_SPAWN:
			image_index = state_timer*idle_anim_speed;
		break;
		case PS_WALK:
			image_index = state_timer*walk_anim_speed;
		break;
		case PS_DASH:
			image_index = state_timer*dash_anim_speed;
		break;
	}
}
#define set_skin(skin)
{
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
}
#define get_skin()
{
	///Gets the active skin. -1 when no skin is active.
	if object_index != oPlayer && object_index != oTestPlayer {
		return player_id._ssnksprites.skin_active;
	}
	return _ssnksprites.skin_active;
}
#define has_skin()
{
	///Shortcut for get_skin() != -1.
	if object_index != oPlayer && object_index != oTestPlayer {
		return player_id._ssnksprites.skin_active != -1;
	}
	return _ssnksprites.skin_active != -1;
}