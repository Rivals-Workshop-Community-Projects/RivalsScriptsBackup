//Skin-Specific Victory

//Pizza Tower
if get_player_color(player) == 14{
    set_victory_bg(sprite_get("wario_victory_pt"));
    set_victory_theme(sound_get("SFX_Victory_Theme_3"));
}

//Gameboy/Early Access
if get_player_color(player) == 17{
    set_victory_bg(sprite_get("wario_victory_gb"));
    set_victory_theme(sound_get("SFX_Victory_Theme_2"));
}

//Family Guy
if get_player_color(player) == 23{
    set_victory_bg(sprite_get("wario_victory_fg"));
    set_victory_theme(sound_get("SFX_Victory_Theme_4"));
}

//Virtual Boy
if get_player_color(player) == 24{
    set_victory_bg(sprite_get("wario_victory_vb"));
    set_victory_theme(sound_get("SFX_Victory_Theme_2"));
}


if get_player_color(player) != 14
&& get_player_color(player) != 17
&& get_player_color(player) != 23
&& get_player_color(player) != 24{
    set_victory_bg(sprite_get("wario_victory_bg"));
    set_victory_theme(sound_get("SFX_Victory_Theme"));
}

//Skin-Specific Wario Bike HUD Sprite

if get_player_color(player) != 0{
	wariobike_hud = sprite_get("wariobike_hud_alt");
}
else{
	wariobike_hud = sprite_get("wariobike_hud");
}

//Fix Pick-Up Hurtbox
if attack == AT_PICKUP && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	pHurtBox.sprite_index = sprite_get("wario_hurtbox");
}

//Piledriver Force Depth
if (attack == AT_USPECIAL_2)
&& (image_index == 21
|| image_index == 22
|| image_index == 28) {
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
		if (grabbed_player_obj != noone) {
		   force_depth = true;
		   depth = grabbed_player_obj.depth + 1;
		}
	}
}

//Neutral Special Force Depth

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	if (attack == AT_NSPECIAL_2){
		if window == 1{
			force_depth = true;
			depth = grabbed_player_obj.depth + 1;
		}
		if (image_index >= 20) && (image_index <= 23){
			force_depth = true;
			depth = grabbed_player_obj.depth + 1;
		}
	}
}

//Wario Bike Holding Anim Handler

if has_rock == true{
	
	if state = PS_IDLE{
		sprite_index = sprite_get("wariobike_idle");
		image_index = state_timer*idle_anim_speed;
	}
	if state = PS_WALK_TURN{
		sprite_index = sprite_get("wariobike_walkturn");
		image_index = state_timer/3;
	}
	if state = PS_WALK{
		sprite_index = sprite_get("wariobike_walk");
		image_index = state_timer*walk_anim_speed;
	}
	if state = PS_FIRST_JUMP || state == PS_IDLE_AIR{
		sprite_index = sprite_get("wariobike_jump");
		image_index = (sign(vsp)/2)-1.5;
	}
	if state = PS_JUMPSQUAT{
		sprite_index = sprite_get("wariobike_jumpstart");
	}
	if state = PS_LAND{
		sprite_index = sprite_get("wariobike_land");
	}
	
}

//RUNES - Big Dash Moment

/*
dash_speed = 9;
if state == PS_DASH{
	sprite_index = sprite_get("bigdash");
	image_index = state_timer*0.3;
	create_hitbox(AT_DATTACK, 3, x, y-24);
}
*/


//FStrong Sound Effects

if state == PS_ATTACK_GROUND && attack == AT_FSTRONG{
	if window == 2 && window_timer == 0{
		spawn_base_dust(x, y, "dash_start", spr_dir);
	}
	if (window == 2 || window == 3) && (window_timer mod 6 == 0){
		spawn_base_dust(x-(16*spr_dir), y, "dash", spr_dir);
	}
	if window == 4 && window_timer == 8{
		spawn_base_dust(x+(32*spr_dir), y, "land", spr_dir);
	}
}

//Base Game Dust Effects
if state == PS_ATTACK_GROUND && attack == AT_DAIR_2 && window == 1 && window_timer == 1 && hitpause == false{
	spawn_base_dust(x, y, "land");
	spawn_base_dust(x-32, y, "dash", 1);
	spawn_base_dust(x+32, y, "dash", -1);
	shake_camera(3, 10);
}

if state == PS_ATTACK_GROUND && attack == AT_DSTRONG && window == 5 && window_timer == 0{
	spawn_base_dust(x, y, "land");
	spawn_base_dust(x-32, y, "dash", 1);
	spawn_base_dust(x+32, y, "dash", -1);
	shake_camera(5, 12);
}

if state == PS_ATTACK_GROUND && attack == AT_DSPECIAL && window == 3 && window_timer == 3 && hitpause == false{
	spawn_base_dust(x, y, "land");
	spawn_base_dust(x-40, y, "dash", 1);
	spawn_base_dust(x+40, y, "dash", -1);
	shake_camera(5, 12);
	
}

if state == PS_ATTACK_GROUND && attack == AT_DSPECIAL_2 && window == 6 && window_timer == 0   && hitpause == false{
	spawn_base_dust(x, y, "land", 1);
	spawn_base_dust(x-32, y, "dash", 1);
	spawn_base_dust(x+32, y, "dash", -1);
	shake_camera(5, 8);
}

//Unique hurt animations
if (state == PS_FROZEN){
    sprite_index = sprite_get("hurt_frozen");
}

if (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE) && sprite_index == sprite_get("hurt") && burned == true{
    sprite_index = sprite_get("hurt_burn");
}

if (bubbled == true){
    sprite_index = sprite_get("hurt_bubble");
}

if (wrapped == true){
    sprite_index = sprite_get("hurt_wrap");
}

if (state == PS_CRYSTALIZED) || crystalized_damage_remaining > 0{
	sprite_index = sprite_get("hurt_crystal");
}

if (state == PS_BURIED){
	sprite_index = sprite_get("hurt_bury");
}

if plasma_pause == true{
    sprite_index = sprite_get("hurt_zap");
}

#define spawn_base_dust
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