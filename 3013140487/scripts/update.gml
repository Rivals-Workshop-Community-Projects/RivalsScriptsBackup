if init_stealing{
    init_stealing = 0;
    var goods_sprite = sprite_get("goods");
    var goods_expressions = [1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0];
    var goods_stolen_amount = [5, 2, 1, 3, 2, 2, -1, -1, 3, 1, 1, -1, 6, -1, -1, -1, 6, 3, 1, 1, 1];
    var goods_stolen_names = ["War medal", "Bagged fish", "Extra goggles", "Pet rock", "Another knife", "Lily seeds", "Little Cloud", "Glass of just ice", "Map stone fragment", "Pack of bubble gum", "Iphone 300", "Rose", "Loose screw", "Gold piece", "Bomb", "Glass of just water", "Music sheet", "Rock candy", "Wallet", "Ruby", "Invitation ticket"];
    with oPlayer if self != other{
        var url_val = (url == ""? random_func_2(75 + player, 2, 1) + 20: real(url));
        
        if "ghost_stolen_goods" not in self || url_val <= 19 other.stolen_data[@player-1][@0] = goods_sprite;
        else other.stolen_data[@player-1][@0] = ghost_stolen_goods;
        
        if "ghost_stolen_name" not in self || url_val <= 19 other.stolen_data[@player-1][@1] = (url_val <= 19? goods_stolen_names[url_val-2]: goods_stolen_names[(url_val%10)%3 + 18]);
        else other.stolen_data[@player-1][@1] = ghost_stolen_name;
        
        if "ghost_stolen_expression" not in self || url_val <= 19 other.stolen_data[@player-1][@2] = (url_val <= 19? goods_expressions[url_val-2]: (url_val%10)%3 != 2);
        else other.stolen_data[@player-1][@2] = ghost_stolen_expression;
        
        if "ghost_stolen_amount" not in self || url_val <= 19 other.stolen_data[@player-1][@3] = (url_val <= 19? goods_stolen_amount[url_val-2]: 1);
        else other.stolen_data[@player-1][@3] = ghost_stolen_amount;
        
        if "ghost_stolen_idx" not in self || url_val <= 19 other.stolen_data[@player-1][@4] = (url_val <= 19? url_val-2: (url_val%10)%3 + 18);
        else other.stolen_data[@player-1][@4] = ghost_stolen_idx;
    }
}

init_shader();
//update
var is_attacking = state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR
if !hitstop vfx_explosion[@2] = clamp(vfx_explosion[2] + 1, 0, 25);

if !is_attacking && reset_game_time room_speed = 60;

update_particles();

if djump_stored && (!free || state_cat == SC_HITSTUN || state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN){
	djump_stored = false;
	max_djumps = all_djumps;
	can_djump = true;
}

if(((state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE || state == PS_ROLL_FORWARD) && window < 2) || 
(state == PS_TECH_GROUND && window == 0) || (state == PS_WALL_TECH && invincible)) && has_rune("D") {
	var colbox = collision_rectangle(x - 20, y, x + 20, y - 70, pHitBox, 1, 1);
	if instance_exists(colbox) && colbox.player_id != self && colbox.hit_priority != 0 {
		attack = AT_DSPECIAL;
		state = free ? PS_ATTACK_AIR: PS_ATTACK_GROUND;
		vsp = 0;
		counter_pos = [colbox.player_id.x - 60*colbox.player_id.spr_dir, x];
		spr_dir = sign((counter_pos[0]-x)*2 + 1);
		window = 4;
		window_timer = 0;
		sound_play(sound_get("dspecial_dodge"));
		voice_play(VC_DODGE);
		revenge_active = true;
		revenge_threshhold = 25;
		outline_color = [0, 0, 0];
		hurtboxID.sprite_index = asset_get("ex_guy_hurt_box");
		hurtboxID.dodging = false;
		invincible = true;
		invince_time = 20;
	}
}

//play intro
if (get_gameplay_time() == 4 && has_intro) set_attack(AT_INTRO);

if is_attacking && attack == AT_INTRO && window == 3 && window_timer == 0 {
	intro_dust_id = spawn_base_dust(x + 1 * spr_dir, y, "land");
	intro_dust_id.depth = -50;
}

if(instance_exists(intro_dust_id)){
	intro_dust_id.depth = -50;
}

if instance_exists(death_target){
    death_timer--;
    if death_timer = 0{
        hitpause = 0;
        death_target.hitpause = 0;
        death_target.state = PS_IDLE;
        create_deathbox(death_target.x, floor(death_target.y - death_target.char_height/2), 20, 20, death_target.player, 1, 1, 5, 2);
        death_target = noone;
    }
}

if (!free && move_cooldown[AT_FSPECIAL] < 10) || state == PS_WALL_JUMP move_cooldown[AT_FSPECIAL] = 0;
else if free && move_cooldown[AT_FSPECIAL] move_cooldown[AT_FSPECIAL] = 4;

if(strong_cooldown && (state != PS_ATTACK_GROUND || (state == PS_ATTACK_GROUND && attack != AT_FSPECIAL))){
	strong_cooldown--;
}

//nspecial knife go boom
var knife_boom = false;
if(instance_exists(knife_stuck)){
    with(knife_stuck) if(state_cat == SC_HITSTUN && hitstun_full - state_timer < 1) knife_boom = true;
}
if(knife_boom){
    var hbox = create_hitbox(AT_NSPECIAL, 2, floor(knife_stuck.x), floor(knife_stuck.y - knife_stuck.char_height/2));
    hbox.spr_dir = knife_stuck.spr_dir * -1;
    knife_stuck = noone;
}
if(revenge_active){
    revenge_active++;
    if(revenge_active > 30){
        revenge_active = 1;
    }
}

//hitable knivez
for(var e = 0; e < array_length(lwfx_buffer); e++){
    var high_pr = noone;
    var p = lwfx_buffer[e];
    if(p.sprite == handle_spr){
	    with pHitBox if type == 1 && hit_priority > 0 && groundedness != 2 && instance_exists(collision_circle(p.xpos, p.ypos, 15, self, 1, 0) && p.alpha > 1){
	        if high_pr == noone || high_pr.hit_priority < hit_priority high_pr = self;
	    }
    }
    if instance_exists(high_pr){
    	var ref = create_hitbox(AT_NSPECIAL_2, 3, p.xpos, p.ypos);
    	with (ref) var launch_angle = get_hitbox_angle(high_pr);
        if(high_pr.player_id == self && revenge_active){
        	revenge_active = false;
        	var hbox = create_hitbox(AT_NSPECIAL_2, 2, p.xpos, p.ypos);
        	hbox.hsp = lengthdir_x(12, launch_angle);
        	hbox.vsp = lengthdir_y(12, launch_angle);
        	hbox.prev_hsp = hbox.hsp;
        	hbox.prev_vsp = hbox.vsp;
        	if(hbox.hsp > 0){
        		hbox.spr_dir = 1;
        	}
        	if(hbox.hsp < 0){
        		hbox.spr_dir = -1;
        	}
        	if(hbox.hsp == 0){
        		hbox.spr_dir = high_pr.player_id.spr_dir;
        	}
        	for(var i = 0; i < 20; i++){
        		hbox.can_hit[i] = i != high_pr.player_id.player;
        	}
        	hbox.can_hit_self = hbox.can_hit[player];
        	hbox.stored_alpha = p.alpha;
        	sound_play(asset_get("sfx_blow_medium1"), 0, noone, 1, 1.2);
        	var hfx = spawn_hit_fx(hbox.x, hbox.y, 305);
        	hfx.pause = 10;
        } else {
        	var hbox = create_hitbox(AT_NSPECIAL_2, 1, p.xpos, p.ypos);
        	hbox.hsp = lengthdir_x(10, launch_angle);
        	hbox.vsp = lengthdir_y(10, launch_angle);
        	hbox.prev_hsp = hbox.hsp;
        	hbox.prev_vsp = hbox.vsp;
        	if(hbox.hsp > 0){
        		hbox.spr_dir = 1;
        	}
        	if(hbox.hsp < 0){
        		hbox.spr_dir = -1;
        	}
        	if(hbox.hsp == 0){
        		hbox.spr_dir = high_pr.player_id.spr_dir;
        	}
        	for(var i = 0; i < 20; i++){
        		hbox.can_hit[i] = i != high_pr.player_id.player;
        	}
        	hbox.handle_spr = sprite_get("knife_handle");
        	hbox.player = high_pr.player_id.player;
        	hbox.can_hit_self = hbox.can_hit[player];
        	hbox.stored_alpha = p.alpha;
        	sound_play(asset_get("sfx_blow_weak2"), 0, noone, 1, 1.4);
        	var hfx = spawn_hit_fx(hbox.x, hbox.y, 302);
        	hfx.pause = 10;
        }
        lwfx_buffer = array_delete(lwfx_buffer, e);
    }
}

//revenge
if(instance_exists(revenge_target)){
    with(revenge_target){
        if(hit_player_obj != other || state_cat != SC_HITSTUN){
            other.revenge_target = noone;
            hurtboxID.dodging = false;
        } else {
            hurtboxID.dodging = true;
            var hstop = hitstop;
            var dir = point_direction(x, y, x + old_hsp, y + old_vsp);
            x += lengthdir_x(hitstop/5, dir);
            y += lengthdir_y(hitstop/5, dir);
        }
    }
    if(hstop <= 1){
        revenge_target.hurtboxID.dodging = false;
        revenge_target.should_make_shockwave = false;
        var hbox = create_hitbox(AT_DSPECIAL, 1, round(revenge_target.x), round(revenge_target.y - revenge_target.char_height/2));
        hbox.damage = max(floor((revenge_damage * (1 + revenge_strong_charge/100) * 0.5)), 3);
        if(has_rune("L")) hbox.damage = floor((revenge_damage * (1 + revenge_strong_charge/100))) + 2;
        hbox.kb_angle = dir;
        hbox.kb_value = revenge_target.orig_knock + revenge_target.orig_knock * has_rune("L");
        print(has_rune("L"))
        hbox.spr_dir = 1;
        revenge_target = noone;
    }
}

if(revenge_threshhold <= 0 && revenge_active){
	revenge_active = false;
}

#define update_particles()
var _ii = 0;
var stuck_knives = 0;
var last_knife = 0;
while (_ii < array_length(lwfx_buffer)){
	if(lwfx_buffer[i].sprite == handle_spr){
		stuck_knives++;
		last_knife = _ii;
	}
	_ii++;
}
var i = 0;
while (i < array_length(lwfx_buffer)){
    var p = lwfx_buffer[i];
    p.alpha -= p.decay;
    if stuck_knives > 1 && p.sprite == handle_spr && i != last_knife && p.alpha > 1 && !has_rune("E") p.alpha = 1;
    p.frame += p.frame_adv;
    if p.alpha <= 0 || (p.frame_adv != 0 && p.frame >= sprite_get_number(p.sprite)) lwfx_buffer = array_delete(lwfx_buffer, i);
    i++;
}


#define array_delete(arr, idx)
var tarr = [];
for(var h = 0; h < array_length(arr); h++){
    if h != idx array_push(tarr, arr[h]);
}
return tarr;

#define spawn_base_dust // supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


#define voice_play
/// voice_play(idx, force_voice = -1, flash = 0;)
var idx = argument[0];
var force_voice = argument_count > 1 ? argument[1] : -1;
var flash = argument_count > 2 ? argument[2] : 0;;

if !voice return;

var selected = (force_voice >= 0? force_voice: min(random_func(idx, vcs[idx][0] + vcs[idx][1], true), vcs[idx][0] - 1 + vcs[idx][1]));
if selected >= vcs[idx][0] return;
selected = (idx/10 >= 1? "": "0") + string(idx) + string(selected);

if selected != noone{
	sound_stop(voice_playing_sound);
	voice_playing_sound = sound_play(sound_get("vc_" + selected), false, noone, 1.2);
}