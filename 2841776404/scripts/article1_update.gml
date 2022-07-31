if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 2) {
    suit_power -= 0.5;
}
if (init_free == false && free == true){
    init_free = true;
}

if (hbox_refresh_time > 0){
	hbox_refresh_time --;
	hbox_refresh = true;
}

if (hbox_refresh_time == 0 && hbox_refresh == true){
	prev_hbox_num = 0;
	prev_hbox_group = 0;
	prev_attack = 0;
	hbox_refresh = false;
}

if (init_free == true && free == false){
	create_hitbox(AT_EXTRA_1, 2, x, y-20);
    spawn_base_dust(x, y, "land", spr_dir);
    sound_play(asset_get("sfx_metal_hit_strong"));
    sound_play(asset_get("sfx_kragg_rock_shatter"));
    shake_camera( 3, 8 );
    init_free = false;
}
if (state == 0){
    if (player_id.attack == AT_DSPECIAL_AIR && player_id.window == 3 && player_id.window_timer == 2 && state != 3){
        state = 3;
        state_timer = 0;
    }
    if (suit_power == 0){
        state = 2;
    }
    sprite_index = sprite_get("suit_standby");
    with (asset_get("pHitBox")){
    if (place_meeting(x,y,other) && other.state != 1 && effect != 626){
    	if ((!(other.prev_hbox_num == hbox_num && other.prev_attack == attack)) && 
				((other.prev_hbox_group == hbox_group && other.prev_attack != attack) || 
				other.prev_hbox_group != hbox_group || -1 == hbox_group)){
    	has_hit = true;
    	if (!transcendent && type == 2){
    		destroyed = true;
    	}
    	other.prev_hbox_num = hbox_num;
    	other.prev_hbox_group = hbox_group;
    	other.prev_attack = attack;
        other.hitstun_time = hitpause;
        other.suit_power -= damage;
        other.state = 1;
        other.state_timer = 0;
        other.recent_player = player;
        player_id.has_hit = true;
        sound_play(sound_effect);
        var fx = spawn_hit_fx(x, y, hit_effect);
        fx.pause_timer = 20;
        fx.pause = 15;
        if (type == 1){
        other.hbox_refresh_time = length*4;
        }
        if (type == 2){
        other.hbox_refresh_time = 10;
        }
        if (type != 2){
        	//player_id.artificial_hitstop_time = hitpause;
        }
    }
        }
    }
    if (suit_power <= 0){
        state = 2;
        state_timer = 0;
    }
    vsp = 12;
}

if (state == 1){
    sprite_index = sprite_get("suit_hit");
    if (state_timer >= hitstun_time){
        if (suit_power > 0){
        state = 0;
        state_timer = 0;
        } else {
            state = 2;
            state_timer = 0;
        }
    }
}

if (state == 2){
    create_hitbox(AT_DSPECIAL_2, 2, x, y - 50).player = recent_player;
    spawn_hit_fx(x, y - 50, 143);
    sound_play(sound_get("sfx_explode"));
    sound_play(asset_get("sfx_abyss_explosion_big"));
    shake_camera( 6, 10 );
    should_die = true;
    player_id.suit_cooldown = true;
}

if (y >= room_height + 100){
    player_id.suit_power -= 160;
    should_die = true;
    spawn_hit_fx(x, room_height, 143);
    shake_camera( 10, 16 );
    sound_play(sound_get("sfx_explode"));
    sound_play(asset_get("sfx_abyss_explosion_big"));
}
if (should_die == true){
    instance_destroy();
    exit;
}

if (state == 3){
    image_index += .2;
    if (image_index >= 3){
        should_die = true;
    }
    sprite_index = sprite_get("stow_remote");
}


exist_timer ++;
state_timer++;

#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


