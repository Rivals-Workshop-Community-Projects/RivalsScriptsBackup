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
		if(state_timer == 1) voice_play(1, [vc_intro]);
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
		if(get_player_color(player) == 31){
			sound_play(asset_get("mfx_title_start"), false, false, 1.2);
			sound_play(sound_get("sfx_scratch_meow2"));
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:1, sprite_index:sprite_get("maxwell"), image_index:image_index, rot:spr_angle, col:c_gray, timer:0, timerMax:20, is_cat:true};
		}
		if(get_player_color(player) == 30){
			if !juiced_up sound_play(sound_get("sfx_strong_hit"));
		}
	}
	if(state_timer >= 85 && state_timer <= 98){
		sprite_index = (cur_skin == 1 ? sprite_get("f_dspecial") : sprite_get("dspecial"));
		image_index = 11 + (state_timer-85)/5;
	}
	if(get_player_color(player) == 30){
		var blu = make_colour_rgb(85, 205, 252);
		var pink = make_colour_rgb(247, 168, 223);
		switch(state_timer){
			case 85:
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y-char_height/2, spr_dir:1, sprite_index:sprite_get("artc_dspec"), image_index:image_index, rot:2*state_timer, col:blu, timer:0, timerMax:20, is_khep:true};
			break;
			case 95:
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y-char_height/2, spr_dir:1, sprite_index:sprite_get("artc_dspec"), image_index:image_index, rot:2*state_timer, col:pink, timer:0, timerMax:20, is_khep:true};
			break;
			case 105:
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y-char_height/2, spr_dir:1, sprite_index:sprite_get("artc_dspec"), image_index:image_index, rot:2*state_timer, col:c_white, timer:0, timerMax:20, is_khep:true};
			break;
			case 115:
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y-char_height/2, spr_dir:1, sprite_index:sprite_get("artc_dspec"), image_index:image_index, rot:2*state_timer, col:pink, timer:0, timerMax:20, is_khep:true};
			break;
			case 125:
			intro_alt_vfx_array[array_length_1d(intro_alt_vfx_array)] = {x:x+draw_x, y:y+draw_y-char_height/2, spr_dir:1, sprite_index:sprite_get("artc_dspec"), image_index:image_index, rot:2*state_timer, col:blu, timer:0, timerMax:20, is_khep:true};
			break;
		}
	}
}

// intro vfx array
var newArray = 0;
for (var i = 0; i < array_length_1d(intro_alt_vfx_array); ++i)
{
    var obj = intro_alt_vfx_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
intro_alt_vfx_array = newArray;


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

#define voice_play
/// voice_play(idx, voice_array, empty_chance = 0)
var idx = argument[0], voice_array = argument[1];
var empty_chance = argument_count > 2 ? argument[2] : 0;;

if !voiced return;

var selected = random_func(idx, array_length(voice_array) + empty_chance, true);

if selected < array_length(voice_array) {
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(voice_array[selected], false, noone, 1.2);
}