//set_attack

// Super
if attack_pressed and special_pressed{
	// Mc. Lazer
	if super >= 100{
		can_move = false;
		can_fast_fall = false;
		marked = 0;
		wrapped = 0;
		burned = 0;
		bubbled = 0;
		poison = 0;
		stuck = 0;
		plasma_pause = 0;
		attack = AT_EXTRA_1;
		window = 0;
		window_timer = 0;
		super = 0;
		supertimer = 0;
		hitpause = false;
		hitstop = 0;
		hitstop_full = 0;
		sound_play(sound_get("supercombo"));
		sound_play(sound_get("superlazer"));
		return;
	}
		
	// Ronald Magic
	if super >= 33 and runeL{
		can_move = false;
		can_fast_fall = false;
		marked = 0;
		wrapped = 0;
		burned = 0;
		bubbled = 0;
		poison = 0;
		stuck = 0;
		plasma_pause = 0;
		attack = AT_UTHROW;
		window = 0;
		window_timer = 0;
		super -= 33;
		supertimer = 0;
		hitpause = false;
		hitstop = 0;
		hitstop_full = 0;
		sound_play(sound_get("selected"));
		sound_play(sound_get("supercombosmall"));
	    return;
	}
}

// Air hamburger
if (attack == AT_NSPECIAL and free){
    window = 11;
}

// Air shake
if (attack == AT_DSPECIAL and free){
    window = 9;
}

// Taunt Sprite
if attack == AT_TAUNT{
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
}

// Up special uses
if attack == AT_USPECIAL and move_cooldown[AT_USPECIAL] < 1{
    uspecialuses += 1;
}

// Taunt Rune Actions
if attack == AT_TAUNT{
    
    has_wisp = true;
    has_siphon = true;
    has_barrier = true;
    if !golden{
        with asset_get("obj_article3") {
            if player_id == other.id and type == "willowisp" and !has_hit{
                other.has_wisp = false;
            }
            if player_id == other.id and type == "soulsiphon" and !has_hit{
                other.has_siphon = false;
            }
        }
        with asset_get("obj_article_solid") {
            if state != "break"{
                other.has_barrier = false;
            }
        }
    }
    
    // Will-o-wisp
    // Titled "soul wisp" and "whill of whisp" in M.U.G.E.N Ronald's code
    if (left_down or right_down) and has_wisp and runeA{
        can_move = false;
        window_timer = 0;
        attack = AT_DTHROW;
        sound_play(sound_get("voice_extra_willowisp"));
        wisp = instance_create(x + 55 * spr_dir, y - 60, "obj_article3");
        wisp.player_id = id;
        wisp.player = player;
        wisp.spr_dir = spr_dir;
        wisp.type = "willowisp";
        return;
    }
    
    // Soul Siphon
    // AKA "soul trap"
    if up_down and has_siphon and runeB{
        can_move = false;
        window_timer = 0;
        attack = AT_DTHROW;
        sound_play(sound_get("voice_extra_soulsiphon"));
        
        siphon = instance_create(x + 55 * spr_dir, y - 60, "obj_article3")
        siphon.player_id = id;
        siphon.player = player;
        siphon.spr_dir = spr_dir;
        siphon.type = "soulsiphon";
        return
    }
    
    // Barrier
    // Originally titled "M.A.C Barrier" and "M.O.D.O.K barrier" in Ronald's code, is it some sort of obscure anime/touhou reference I'm not getting
    if down_down and has_barrier and runeC{
        can_move = false;
        window_timer = 0;
        attack = AT_DTHROW;
        sound_play(sound_get("voice_extra_barrier"));
        
        barrier = instance_create(x + 55 * spr_dir, y - 60, "obj_article_solid")
        barrier.player_id = id;
        barrier.player = player;
        barrier.spr_dir = spr_dir;
        
        if soul_points >= 1{
            barrier = instance_create(x + 55 * spr_dir, y - 180, "obj_article_solid")
            barrier.player_id = id;
            barrier.player = player;
            barrier.spr_dir = spr_dir;
			sound_play(sound_get("soulboost"));
			soul_points -= 1;
			soul_flash_timer = 20;
        }
        return;
    }
}

// USTRONG french fries
if (attack == AT_USTRONG and runeI and move_cooldown[AT_USTRONG_2] == 0){
    can_move = false;
    window_timer = 0;
	attack = AT_USTRONG_2;
}

// Ronald girl
if runeH and attack == AT_DSTRONG{
	has_ronald_girl = true;
	if !golden{
		with asset_get("obj_article3") {
			if player_id == other.id and type == "ronald_girl"{
				other.has_ronald_girl = false;
			}
		}
	}
	
	if has_ronald_girl{
		attack = AT_DTHROW;
		sound_play(sound_get("voicefspecial"));
		locate_nearest_player();
		girl = instance_create(shortest_id.x, shortest_id.y, "obj_article3");
		girl.player_id = id;
		girl.player = player;
		girl.spr_dir = spr_dir;
		girl.type = "ronald_girl";
		var stage_y = get_stage_data( SD_Y_POS )
		girl.platform = shortest_id.y < stage_y - 10
	}
}

#define locate_nearest_player
shortest_dist = 9999;
shortest_id = noone;

with (asset_get("oPlayer")) {
	if (player != other.player) {
		var curr_dist = point_distance(x,y,other.x,other.y);
		if (curr_dist < other.shortest_dist) {
			other.shortest_dist = curr_dist;
			other.shortest_id = id;
		}
	}
}