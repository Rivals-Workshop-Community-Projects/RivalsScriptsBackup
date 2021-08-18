//update
timer++;

//check hitbox view
hitbox_view = get_match_setting(SET_HITBOX_VIS);

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 8 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(255, 0, 0);
	var color_rgb2=make_color_rgb(181, 0, 0);
	var color_rgb3=make_color_rgb(255, 112, 112);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	
	set_article_color_slot(0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(1,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_article_color_slot(2,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	//set the new color using rgb values from the gamemaker color
}
init_shader();

if (state == PS_WALK || state == PS_DASH_START) && piece == 'R' {
	if state_timer == 1 {
		sound_stop(sound_get('walk_grind1'))
		sound_play(sound_get('walk_grind1'), true, noone, 0.5)
	}
} else if !(piece == 'R' && (state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP)) {
	sound_stop(sound_get('walk_grind1'))
}

move_cooldown[AT_FSPECIAL] = 60;
move_cooldown[AT_DSPECIAL] = 60;
if move_cooldown[AT_NSPECIAL] <= 1 {
	move_cooldown[AT_NSPECIAL] = 2;
}

if !free || state == PS_WALL_JUMP {
    move_cooldown[AT_USPECIAL] = 0;
    uspec_move_num = 0;
}

if next_state != undefined {
	state = next_state;
	state_timer = 0;
	next_state = undefined
}

if state != PS_PRATLAND && state != PS_PRATFALL && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) {
	prat_land_time = 16;
}

hurtbox_spr = sprite_get(piece + "hurtbox")

if !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) && !(piece_id != undefined && instance_exists(piece_id) && piece_id.perform_attack == true && piece_id.piece == "B") {
	sound_stop(sound_get("rune_search_start"))
}

if shake_timer > 0 {
    shake_timer--;
}
pawn_move_timer++

switch piece {
    case "P":
    walk_speed = 3;
	walk_accel = 0.2;
	walk_turn_time = 6;
	initial_dash_time = 10;
	initial_dash_speed = 6.25;
	dash_speed = 6;
	dash_turn_time = 10;
	dash_turn_accel = 1.5;
	dash_stop_time = 4;
	dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
	ground_friction = 0.6;
	moonwalk_accel = 1.4;
	break;
    
    case "N":
    knockback_adj = 1.05;
    char_height = 50;
    if has_rune("J") max_djumps = 4; //Knight has 2 extra jumps, and King retains FSPECIAL super armour on FSTRONG and DSTRONG.
    else max_djumps = 2;
    jump_speed = 11;
    djump_speed = 9;
    short_hop_speed = 7;
    dash_stop_percent = 0.6;
    dash_turn_accel = 1.1;
    ground_friction = 0.16;
    dash_speed = 5;
    initial_dash_speed = 5.5;
    wave_friction = 0.1;
    break;
    
    case "R":
    knockback_adj = 0.95;
    char_height = 45;
    jump_speed = 8;
    djump_speed = 8;
    short_hop_speed = 5;
    ground_friction = 0.8;
    walk_speed = 11;
    walk_accel = 0.3;
    dash_speed = 7.5;
    initial_dash_speed = 8.5;
    dash_turn_time = 6;
    initial_dash_speed = 10;
    leave_ground_max = 7;
    max_jump_hsp = 7;
    air_max_speed = 5;
    air_accel = 0.3;
    air_friction = 0.1;
    break;
    
    case "B":
    knockback_adj = 1.00;
    char_height = 55;
    walk_speed = 4;
    dash_speed = 6;
    initial_dash_speed = 7.5;
    air_dodge_speed = 9;
    techroll_speed = 10;
    roll_forward_max = 10;
    roll_backward_max = 10;
    break;
    
    case "Q":
    knockback_adj = 0.95;
    char_height = 70;
    dash_speed = 7;
    initial_dash_speed = 8;
    air_accel = 0.45;
    jump_speed = 11;
	short_hop_speed = 6;
	djump_speed = 11;
    break;
    
    case "K":
    knockback_adj = 0.90;
    char_height = 75;
    walk_speed = 2;
    dash_speed = 4;
    initial_dash_speed = 4.25;
    air_max_speed = 4;
    break;
}

if !hitpause {
    for (var i = array_length(uspec_afterimages) - 1; i >= 0; i--) {
        if uspec_afterimages[i,2] > 0 {
            uspec_afterimages[i,2]--;
        }
    }
}

if king_armour {
	//disable dash/shield
	if has_rune("L") { //All FSPECIAl/DSPECIAL attacks have been enhanced.
		super_armor = true;
		armour_timer += 0.5;
		if armour_timer >= 120 {
			king_armour = false;
			armour_timer = 0;
			user_event(0)
			char_height = 75;
		    walk_speed = 2;
		    dash_speed = 4;
		    initial_dash_speed = 4.25;
		    air_max_speed = 4;
		    armour_cooldown = 120;
		    exit;
		}
	} else {
		can_shield = false;
		has_airdodge = false;
		super_armor = true;
		//soft_armor = 10;
		djumps = 1;
		walk_speed = 1;
		dash_speed = 2;
		initial_dash_speed = 2.5
		air_max_speed = 3;
		
		armour_timer++;
		
		if armour_timer >= 120 {
			king_armour = false;
			armour_timer = 0;
			user_event(0)
			char_height = 75;
		    walk_speed = 2;
		    dash_speed = 4;
		    initial_dash_speed = 4.25;
		    air_max_speed = 4;
		    armour_cooldown = 120;
		    exit;
		}
		
		switch (state) {
			case PS_PARRY_START:
			set_state(prev_state)
			super_armor = true;
			can_shield = false;
			break;
			default: break;
	    }
	}
}
if armour_cooldown > 0 {
	armour_cooldown--;
}

if queen_active && piece == "Q" {
	if queen_timer > 0 && !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL_2) {
		if !has_rune("G") { //Queen form meter never decreases.
			queen_timer--;
		}
	} else if queen_timer == 0 {
		queen_active = false;
        pawn_meter = pawn_meter_default;
	}
}
/*
if queen_active {
	if !(piece_id != undefined && piece_id.piece == "Q") {
		var hue_timer = abs(dsin(timer*3));
		var hue_r = hue_timer*194
		var hue_g = hue_timer*119
		var hue_b = 0
		outline_color = [hue_r, hue_g, hue_b]
		init_shader();
	} else {
		outline_color = [hue_r, hue_g, hue_b]
		init_shader();
	}
}
*/

var Qstates = [PS_IDLE, PS_IDLE_AIR, PS_JUMPSQUAT, PS_FIRST_JUMP, PS_DOUBLE_JUMP, PS_WALL_JUMP, PS_WALK, PS_WALK_TURN, PS_DASH_START, PS_DASH, PS_DASH_STOP, PS_DASH_TURN, PS_CROUCH]
var returntopawn = false;
for (var i = 0; i < array_length(Qstates); i++) {
	if state == Qstates[i] && piece == "Q" && queen_timer <= 0 {
		returntopawn = true;
	}
}

if returntopawn {
	if free set_state(PS_ATTACK_AIR)
	else set_state(PS_ATTACK_GROUND)
	state_timer = 0;
	window = 3;
	window_timer = 20;
	attack = AT_FSPECIAL_2;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && special_pressed && !up_down && !left_down && !right_down {
	if special_counter == 1 && down_down {
        if piece_id != undefined && instance_exists(piece_id) && !piece_id.perform_attack {
            piece_id.perform_attack = true;
            piece_id.attack_timer = 0;
            piece_id.window_timer = 0;
        }
    }
    if special_counter == 1 && piece_id != undefined && instance_exists(piece_id) {
        piece_id.progress_attack = true;
    }
}

//runes
if has_rune("A") { //Pawn meter always starts 3 spaces ahead.
	pawn_meter_default = 3;
	if state == PS_SPAWN {
		pawn_meter = pawn_meter_default;
	}
}
if has_rune("K") { //Piece hitboxes when attacked size increased, and last much longer.
	set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
	set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
}
if has_rune("O") { //If you die while another piece is active, you will switch to that piece instead.
	if y > room_height + 160 || x < -80 || x > room_width + 80 {
		if piece_id != undefined && instance_exists(piece_id) {
			x = piece_id.x
			y = piece_id.y
			piece = piece_id.piece;
			user_event(0)
			sound_play(asset_get("mfx_levelup"))
			instance_destroy(piece_id);
			piece_id = undefined;
		}
	}
}
if has_rune("M") { //When Pawn meter is full, press TAUNT to unleash a Megachessatron (only once per game).
    if !used_fs && pawn_meter >= 7 && taunt_pressed && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || (state == PS_ATTACK_GROUND && attack == AT_TAUNT)) {
        state = PS_ATTACK_GROUND;
        attack = 49;
        window = 0;
        window_timer = 0;
        state_timer = 0;
        visible = false;
        used_fs = true;
    }
}

//nspecial
if swap_timer > 0 {
	swap_timer--;
	if piece_id != undefined {
		if free && state != PS_PRATFALL state = PS_PRATFALL
		if !free && state != PS_PRATLAND state = PS_PRATLAND
	}
}

if swap_timer == 1 {
    if piece_id != undefined && !piece_id.perform_attack && !piece_id.gonnadie {
    	user_event(0)
        var cur_x = x;
        var cur_y = y;
        var cur_hsp = hsp;
        var cur_vsp = vsp;
        var cur_dir = spr_dir;
        var cur_piece = piece;
        var cur_free = free;
        var cur_armour = king_armour;
        var cur_armour_timer = armour_timer;
        var cur_sprite_index = sprite_index;
        
        var new_x = piece_id.x;
        var new_y = piece_id.y;
        var new_hsp = piece_id.hsp;
        var new_vsp = piece_id.vsp;
        var new_dir = piece_id.spr_dir;
        var new_piece = piece_id.piece;
        var new_free = piece_id.free;
        var new_armour = piece_id.king_armour;
        var new_armour_timer = piece_id.armour_timer;
        var new_sprite_index = piece_id.sprite_index;
        
        x = new_x
        y = new_y + 2
        hsp = new_hsp
        vsp = new_vsp
        spr_dir = new_dir
        piece = new_piece
        king_armour = new_armour
        armour_timer = new_armour_timer
        sprite_index = new_sprite_index
        
        piece_id.x = cur_x
        piece_id.y = cur_y
        piece_id.hsp = cur_hsp
        piece_id.vsp = cur_vsp
        piece_id.spr_dir = cur_dir
        piece_id.piece = cur_piece
        piece_id.king_armour = cur_armour
        piece_id.armour_timer = cur_armour_timer
        if !cur_armour piece_id.outline_color = [0,0,0]
        piece_id.mask_index = sprite_get(cur_piece + "hurtbox")
        piece_id.sprite_index = cur_sprite_index
        
        piece_id.bishop_cooldown = 120;
        
        spawn_hit_fx(cur_x, cur_y, 13)
        spawn_hit_fx(new_x, new_y, 13)
        spawn_hit_fx(new_x, new_y - 20, 254)
        sound_play(asset_get("mfx_star"))
        
        switch cur_piece {
            case "P": piece_id.hp = hp_P; break;
            case "B": piece_id.hp = hp_B; break;
            case "N": piece_id.hp = hp_N; break;
            case "K": piece_id.hp = hp_K; break;
            case "R": piece_id.hp = hp_R; break;
            case "Q": piece_id.hp = hp_Q; break;
        }
        
        if cur_free && !has_rune("B") { //NSPECIAL cooldown and pratland removed.
            next_state = free ? PS_PRATFALL : PS_PRATLAND;
            prat_land_time = 26;
        }
        
        if has_rune("H") { //NSPECIAL has a hitbox.
            create_hitbox(AT_NSPECIAL, 1, new_x, new_y - 30);
        }
    }
    if !has_rune("B") { //NSPECIAL cooldown and pratland removed.
        move_cooldown[AT_NSPECIAL] = 60;
    }
    
    //state = PS_IDLE;
}
//compatibility
//user_event(9)

//chess ai
//user_event(1);