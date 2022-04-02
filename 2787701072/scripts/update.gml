//update


honk_sfx = sound_get("honk_0" + string(random_func_2(player, 5, true)+1));
article_honk_sfx = sound_get("honk2_0" + string(random_func_2(player, 5, true)+1));

if !(state == PS_ATTACK_GROUND && attack == AT_TAUNT) {
	sound_stop(sound_get("sans_earrape"));
}

//check hitbox view
hitbox_view = get_match_setting(SET_HITBOX_VIS);

//check practice mode
if (get_training_cpu_action() != CPU_FIGHT && object_index != oTestPlayer) {
	practice_mode = true;
}

with oPlayer {
	if id != other.id {
		//print_debug(get_state_name(state))
	}
}

if state == PS_SPAWN || state == PS_RESPAWN || was_reloaded {
	if state_timer == 1 {
		//spawn second goose
		user_event(8);
	}
}


//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 13 {
	hue+=.5 
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb1=make_color_rgb(255, 128, 0);
	color_rgb2=make_color_rgb(224, 100, 17);
	//make a gamemaker color variable using chosen color
	hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(13,2,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(13,3,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	//set the new color using rgb values from the gamemaker color
}
init_shader();

num_wt = 0;
num_wt_article = 0;
with obj_article1 {
    if player_id == other.id {
        other.num_wt++;
        other.num_wt_article++;
    }
}
if holding_wt {
    num_wt++;
}

var minDist = 1000000000;
var minID = undefined;
with obj_article1 {
    if player_id == other.id {
        var currentDist = abs(point_distance(x, y, other.x, other.y));
        if currentDist < minDist {
            minDist = currentDist;
            minID = id;
        }
    }
}

wt_closest = minID;

if num_wt >= 1 && !holding_wt {
    with obj_article1 {
        if player_id == other.id {
            if colour == "yellow" {
                other.next_colour = "blue";
            } else {
                other.next_colour = "yellow";
            }
        }
    }
}

if state == PS_HITSTUN || state == PS_HITSTUN_LAND {
	wt_hitbox_size = 0;
}

with pHitBox if player_id == other.id && ("isclone" in self) && isclone == true {
	//print(hitbox_timer)
	//print(prev_hitbox_timer)
	if hitbox_timer == prev_hitbox_timer && !has_hit {
		instance_destroy(self)
	} else {
		prev_hitbox_timer = hitbox_timer
	}
}

move_cooldown[AT_DSPECIAL] = 10;

if swap_timer > 0 {
	swap_timer--
	if swap_timer == 60 {
		var old_x = x
		var old_y = y
		var old_hsp = hsp
		var old_vsp = vsp
		var old_dir = spr_dir
		x = goose_id.x
		y = goose_id.y
		hsp = goose_id.hsp
		vsp = goose_id.vsp
		spr_dir = goose_id.spr_dir
		
		goose_id.x = old_x
		goose_id.y = old_y
		goose_id.hsp = old_hsp
		goose_id.vsp = old_vsp
		goose_id.spr_dir = old_dir
		sound_play(asset_get("mfx_star"))
		var fx1 = spawn_hit_fx(old_x, old_y, 13)
			fx1.pause = 10
        var fx2 = spawn_hit_fx(x, y, 13)
        	fx2.pause = 10
        var fx3 = spawn_hit_fx(x, y - 20, 254)
        	fx3.pause = 10
	}
}

switch state {
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    switch attack {
        case AT_DAIR: non_sprite = sprite_get("dair_hammer") break;
        case AT_UAIR: non_sprite = sprite_get("uair_bat") break;
        case AT_NSPECIAL: non_sprite = sprite_get("nspecial_vfx") break;
        case AT_NSPECIAL_2: non_sprite = sprite_get("nspecial_charge_vfx") break;
        case AT_FSPECIAL: non_sprite = sprite_get("fspecial_lid") break;
        case AT_DSPECIAL: non_sprite = sprite_get("dspecial_wt") break;
        
        default: non_sprite = asset_get("empty_sprite") break;
    }
    break;
    
    default: non_sprite = asset_get("empty_sprite") break;
}


if state == PS_PARRY_START || state == PS_PARRY {
	hurtboxID.sprite_index = sprite_get("parry_hurtbox");
}

if blue_colour == undefined {
    var bcol_r = get_color_profile_slot_r(get_player_color(player), 5);
    var bcol_g = get_color_profile_slot_g(get_player_color(player), 5);
    var bcol_b = get_color_profile_slot_b(get_player_color(player), 5);
    blue_colour = array_create(3);
    blue_colour = [bcol_r, bcol_g, bcol_b];
}
if yellow_colour == undefined {
    var ycol_r = get_color_profile_slot_r(get_player_color(player), 6);
    var ycol_g = get_color_profile_slot_g(get_player_color(player), 6);
    var ycol_b = get_color_profile_slot_b(get_player_color(player), 6);
    yellow_colour = array_create(3);
    yellow_colour = [ycol_r, ycol_g, ycol_b];
}
if hold_colour == "blue" {
    if get_player_color(player) == 0 {
        set_article_color_slot(7, blue_colour[0], blue_colour[1], blue_colour[2], 1);
    }
    set_article_color_slot(5, blue_colour[0], blue_colour[1], blue_colour[2], 1);
} else if hold_colour == "yellow" {
    set_article_color_slot(5, yellow_colour[0], yellow_colour[1], yellow_colour[2], 1);
}

//nair boost only once per airtime
if !nair_boost && !free {
	nair_boost = true;
}

if (drawZoDeathEffect) {
    zoDeathTimer++;
    if floor(zoDeathTimer/4) == 8 {
        drawZoDeathEffect = false;
    }
}

//trailer stuff
/*
with oPlayer if id != other.id {
	if state != PS_HITSTUN {
		state = PS_ATTACK_GROUND
		state_timer = 1
		attack = AT_NSPECIAL_2
		window = 1
		window_timer = 6
	}
	
	if state == PS_DEAD {
		state = PS_DEAD
		state_timer = 0
		y = 0
		visible = false
	}
}