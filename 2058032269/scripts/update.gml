//update.gml

//intro - taken from kris who's was taken from r-00, so this is also taken from r-00 fuck my head

if (get_gameplay_time() < 120) {
	if (!dash_enabled && taunt_pressed) {
		sound_play(sound_get("cup_menu_equip"));
		dash_enabled = true;
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
	if (dash_enabled && taunt_pressed) {
		sound_play(sound_get("cup_menu_equip"));
		dash_enabled = false;
		clear_button_buffer(PC_TAUNT_PRESSED);
	} 
    if (get_gameplay_time() == 10 && get_player_color(player) != 8) {
        set_attack(AT_NTHROW);
    }
}

if trummelcodecneeded {
    trummelcodec = 17;
    
    var i = 0; //they don't pay me enough for this i'm taking the easy way out leave me alone
    
    trummelcodecmax = 15;
    trummelcodecsprite1 = sprite_get("elderkettle");
    trummelcodecsprite2 = sprite_get("elderkettle");

    //Page 0
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 2;

    trummelcodecline[i,1] = "Woah!";
    trummelcodecline[i,2] = "Seeing this kind of";
    trummelcodecline[i,3] = "appearance is rare";
    trummelcodecline[i,4] = "these days!";
    
    i++;
    
    //Page 1
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 2;

    trummelcodecline[i,1] = "This is Cuphead.";
    trummelcodecline[i,2] = "Appearance wise, he's";
    trummelcodecline[i,3] = "reminiscent of old";
    trummelcodecline[i,4] = "1930's cartoons.";
    
    i++;
    
    //Page 2
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "He even has the same";
    trummelcodecline[i,2] = "kind of outfit that";
    trummelcodecline[i,3] = "Mickey has. Just with";
    trummelcodecline[i,4] = "a cup for a head.";
    
    i++;
    
    //Page 3
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "You boys had better";
    trummelcodecline[i,2] = "watch your step, for he";
    trummelcodecline[i,3] = "has a wide range of";
    trummelcodecline[i,4] = "weapons at his disposal!";
    
    i++;
    
    //Page 4
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "He has a total of six";
    trummelcodecline[i,2] = "shots to choose from,";
    trummelcodecline[i,3] = "each have varying";
    trummelcodecline[i,4] = "attributes.";
    
    i++;
    
    //Page 5
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "Alternatively, he can";
    trummelcodecline[i,2] = "use up one of his cards";
    trummelcodecline[i,3] = "to unleash an attack";
    trummelcodecline[i,4] = "with heavy damage!";
    
    i++;
    
    //Page 6
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "And that's not all,";
    trummelcodecline[i,2] = "let him fill that meter";
    trummelcodecline[i,3] = "all the way and he'll";
    trummelcodecline[i,4] = "gain total invincibility!";
    
    i++;
    
    //Page 7
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "wait he gets what";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "";
    trummelcodecline[i,4] = "";
    
    i++;
    
    //Page 8
    trummelcodecspeaker[i] = 2;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "oh no";
    trummelcodecline[i,2] = "";
    trummelcodecline[i,3] = "";
    trummelcodecline[i,4] = "";
    
    i++;
    
    //Page 9
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "Not to worry! He only";
    trummelcodecline[i,2] = "gets it briefly, and";
    trummelcodecline[i,3] = "you can directly control";
    trummelcodecline[i,4] = "that card count.";
    
    i++;
    
    //Page 10
    trummelcodecspeaker[i] = 3;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "If you parry any of his";
    trummelcodecline[i,2] = "attacks, he loses half";
    trummelcodecline[i,3] = "a card, or 10%, from that";
    trummelcodecline[i,4] = "super meter.";
    
    i++;
    
    //Page 11
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "The fact he can get";
    trummelcodecline[i,2] = "guaranteed invincibility";
    trummelcodecline[i,3] = "at all feels... scary, to";
    trummelcodecline[i,4] = "say the least.";
    
    i++;
    
    //Page 12
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "For a strategy, I think";
    trummelcodecline[i,2] = "it's best to just rush";
    trummelcodecline[i,3] = "him down. Cuphead really";
    trummelcodecline[i,4] = "relies on those shots.";
    
    i++;
    
    //Page 13
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "For the most part,";
    trummelcodecline[i,2] = "they're pretty easy to";
    trummelcodecline[i,3] = "parry too, due to the";
    trummelcodecline[i,4] = "constant fire.";
    
    i++;
    
    //Page 14
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "The only problem is he's";
    trummelcodecline[i,2] = "no static fighter, seeing";
    trummelcodecline[i,3] = "as he's able to run and";
    trummelcodecline[i,4] = "jump while shooting.";
    
    i++;
    
    //Page 15
    trummelcodecspeaker[i] = 1;
    trummelcodecexpression[i] = 0;

    trummelcodecline[i,1] = "Let's just try to not let";
    trummelcodecline[i,2] = "him get too many hits in.";
    trummelcodecline[i,3] = "";
    trummelcodecline[i,4] = "";
}

//dash - regular dash input
if (state_cat == SC_AIR_NEUTRAL && dash_enabled && !air_dashed) {
	if (left_hard_pressed && !right_hard_pressed) {
		spr_dir = -1;
		set_attack(AT_TAUNT_2);
	}
	if (right_hard_pressed && !left_hard_pressed) {
		spr_dir = 1;
		set_attack(AT_TAUNT_2);
	}
}

//dash - taunt input
if (state_cat == SC_AIR_NEUTRAL && !dash_enabled && !air_dashed && taunt_pressed) {
	if (left_down && !right_down) {
		spr_dir = -1;
	}
	if (right_down && !left_down) {
		spr_dir = 1;
	}
	set_attack(AT_TAUNT_2);
}


/*
// practice mode - copied from kris
timer2 = get_game_timer();
    if (timer1 == timer2 && timer1 != 0 && !practice){
        practice = true;
    }
*/

if (nspecial_jumped && special_down && free) {
	if (up_down) {
		attack = AT_NSPECIAL_2;
	} else {
		attack = AT_NSPECIAL;
	}
}

if (state == PS_LAND  || state == PS_LANDING_LAG) {
	nspecial_jumped = false;
}

if (card_count > 100) { card_count = 100; }

if (rebound_ff > 0) { rebound_ff --; } 

if (card_count < 0) {
	card_count = 0;
}

if (card_count >= 100) {
	meter_not_full = 1;
	if (supermeter_sound_played == false) {
		sound_play(sound_get("super_beam_full"));
		supermeter_sound_played = true;
	}
}

if (card_count < 100) {
	meter_not_full = 0;
	if (supermeter_sound_played == true) {
		supermeter_sound_played = false;
	}
}

if (get_player_color(player) == 10){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("peashot_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("peashot_up_ea"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ex_shot_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("spreadshot1_ea"));
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("spreadshot2_ea"));
	set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("spreadshot3_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("spreadshot1_up_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("spreadshot2_up_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("spreadshot3_up_ea"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("spread_ex1_ea"));
	set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("spread_ex2_ea"));
	set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("spread_ex3_ea"));
	set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("spread_ex4_ea"));
	set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("spread_ex5_ea"));
	set_hitbox_value(AT_FSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("spread_ex6_ea"));
	set_hitbox_value(AT_FSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("spread_ex7_ea"));
	set_hitbox_value(AT_FSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("spread_ex8_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("chaser_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 7, HG_PROJECTILE_SPRITE, sprite_get("chaser_up_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("lobbershot_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 6, HG_PROJECTILE_SPRITE, sprite_get("lobbershot_ea"));
	set_hitbox_value(AT_FSPECIAL, 12, HG_PROJECTILE_SPRITE, sprite_get("kablooey_ea"));
	
	set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_weak_ea"));
	set_hitbox_value(AT_EXTRA_1, 2, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_full_ea"));
	set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_weak_up_ea"));
	set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_SPRITE, sprite_get("chargeshot_full_up_ea"));
	
	set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("reboundshot_ea"));
	set_hitbox_value(AT_NSPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("reboundshot_up_ea"));
	set_hitbox_value(AT_FSPECIAL, 13, HG_PROJECTILE_SPRITE, sprite_get("rebound_ea"));
	
	eightway_top = hit_fx_create(sprite_get("ew_vfx_top_ea"), 25);
	eightway_middle = hit_fx_create(sprite_get("ew_vfx_middle_ea"), 30);
	eightway_bottom = hit_fx_create(sprite_get("ew_vfx_bottom_ea"), 35);
	
	kablooey_vfx = hit_fx_create(sprite_get("kablooey_vfx_ea"), 15);
	
	radical_barrage = hit_fx_create(sprite_get("radicalbarrage_ea"), 30);
	
	peashooter_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	spread_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	chase_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	lobber_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	charge_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	roundabout_vfx = hit_fx_create(sprite_get("nspecial_vfx_ea"), 4);
	
	orbit_sprite = sprite_get("chaos_orbit_ea");
}

// ---- rune stuff that doesn't fit anywhere else ----

// Tier 1
if (has_rune("F")) {
	chargeshot_time = 30;
}
if (has_rune("H")) {
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("dash_rune"));
	set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, sprite_get("dash_rune"));
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));
}

// Tier 2
if (has_rune("I")) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 7);
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 4);
	
	set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL_2, 4, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL_2, 6, HG_DAMAGE, 7);
	set_hitbox_value(AT_NSPECIAL_2, 7, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL_2, 5, HG_DAMAGE, 4);
}
if (has_rune("J")) {
	set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.55);
	set_hitbox_value(AT_NSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0.55);
}
if (has_rune("K")) {
	super_gain_multipler = 2;
}

// Tier 3
if (has_rune("L")) {
	parry_multiplier = 2;
}
if (has_rune("M")) {
	ex_cost_multiplier = 0.5;
}
if (has_rune("O")) {
	invincible_countdown = rune_invincible_countdown;
}

/*
if (menu_selection == 1) {
	current_shot = primary;
}

if (menu_selection == 2) {
	current_shot = secondary;
}

if (menu_selection == 3 && card_count >= 100) {
	current_shot = 2+super_art;
}

if (menu_selection == 3 && card_count < 100 && attack != AT_DSPECIAL) {
	menu_selection = 1;
}
*/

//Shot Menu on respawn -- to be used in set_attack.gml because code is a bitch

if (state == PS_RESPAWN) {
	menu_respawn = true;
} else if (state != PS_RESPAWN) {
	menu_respawn = false;
}

//Smoke Bomb

switch(state) {
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		if (state_timer == 1) {
			spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
		}
		if (state_timer == 18) {
			spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
		}
		break;
	default:
		break;
}

switch(state) {
	case PS_TECH_FORWARD:
	case PS_TECH_BACKWARD:
		if (state_timer == 1) {
			spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
		}
		if (state_timer == 28) {
			spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
		}
		break;
	default:
		break;
}


if (state == PS_AIR_DODGE) {
	if (state_timer == 1) {
		spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
	}
	if (state_timer == 15) {
		spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
	}
}

if (!free || state == PS_WALL_JUMP) {
	uspecial_used = false;
}

if (!free) {
	n_double_jumped = false;
	air_dashed = false;
}

if (uspecial_used) {
	move_cooldown[AT_USPECIAL] = 1000000;
}

if (!uspecial_used) {
	move_cooldown[AT_USPECIAL] = 0;
}

if (current_shot != 5) {
	chargeshot_charge = 0;
	chargeshot_charge_reset = false;
}

if (state_cat == SC_HITSTUN) {
	uspecial_used = false;
	shot_menu = -1;
	shot_cursor = -1;
	menu_open = false;
	chargeshot_charge_reset = false;
	shot_cancel_timer = 0;
	shot_can_cancel = false;
	chargeshot_charge = 0;
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
	shot_menu = -1;
	shot_cursor = -1;
	menu_open = false;
}

if (chargeshot_charge >= chargeshot_time) and ((get_gameplay_time() mod 8) > 4) { //Fully charged
	outline_color = [180, 74, 0];
}
else {
outline_color = [0, 0, 0];
}
init_shader();

//Super Art - Invinciblity
if (invincible_super && card_count > 0) {
	invincible = true;
	invincibility_timer++;

	if (invincibility_timer >= invincible_countdown) {
		card_count += -1;
		invincibility_timer = 0;
	}
}

if (card_count == 0) {
	invincible_super = false;
}

// UTilt
var up_height = normal_height;
if (state == PS_ATTACK_GROUND || state = PS_ATTACK_AIR) {
    up_height += +40*(attack == AT_UTILT)+40*(attack == AT_USTRONG);
}
char_height += (up_height-char_height)/3;

//Reflect Detection - So that Cuphead's projectiles don't still build super meter when hitting Fox's shine reflector

//Disabled due to causing problems

/*
with (asset_get("oPlayer")) {
	if (attack == AT_DSPECIAL && "reflect" in self) {
		reflect_detected = true;
	} else {
		reflect_detected = false;
	}
}
*/

reflect_detected = true;

//Seasonal Stuff - taken from Giik

if (wearing_hat == 1) {
    if (state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE) {
        wearing_hat = -1;
        var newfx = spawn_hit_fx(x, y, hit_fx_create(seasonal_toss, 30));
        newfx.depth = depth-1;
    }
} else if (wearing_hat == -1) {
    if (state == PS_RESPAWN or state == PS_SPAWN) {
    wearing_hat = 1;
    }
}

// Otto Bobblehead
var do_otto_interaction = false; //sets a variable that can be accessed from inside the with statement
var cuphead_bobble = 0;

with(asset_get("oPlayer")){
    if ("i_am_otto_the_billiard_biker" in self && bobble_id == other.id && bike){
        do_otto_interaction = true;
    }
}

if (do_otto_interaction){
    cuphead_bobble = random_func_2(0, 4, true);
    if (cuphead_bobble == 1) {
    	otto_bobblehead_sprite = sprite_get("bobble_mugman");
    }
    else if (cuphead_bobble == 2) {
    	otto_bobblehead_sprite = sprite_get("bobble_chalice");
    }
    else if (cuphead_bobble == 3) {
    	otto_bobblehead_sprite = sprite_get("bobble_dice");
    } else {
    	otto_bobblehead_sprite = sprite_get("bobble_cuphead");
    }
}

// boss fight stage support
switch(get_stage_data(SD_ID)){
	case "40312": // eye of cthuhulu
	case "51050": // samps
	case "75518": // dracula
		wallop = true;
		break;
	default:
		break;
}

if (wallop) {
	if (get_gameplay_time() % 60 == 0) {
		card_count++;
	}
}

//dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Oh? Are you one of those 'cartoons' that the mortals keep talking about?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Hand over your soul contract!";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "My... what?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "My own soul is on the line, I need to collect all the contracts in the land by midnight!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Well, that sounds like your own problem. I'm not going to get involved in other peoples affairs, this has nothing to do with me.";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "I'll entertain your idea, though.[glass] Have at you!";
page++;

//kirby copy ability
if (swallowed == 1) {
	swallowed = 0;
	
	var ability_spr = sprite_get("kirbo");
	var ability_hurt = sprite_get("kirbo_hurt");
	var ex_spr = sprite_get("ex_shot");
	var ex_sfx = sound_get("sfx_ex");
	var hit_sfx = sound_get("sfx_peashoot_hit");
	var myicon = sprite_get("cupheadkirbyicon");
	
	with enemykirby{
		newicon = myicon;
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ex_sfx);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 16);
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
		
		set_num_hitboxes(AT_EXTRA_3, 1);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .95);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ex_spr);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ex_spr);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 16);
		
	}
}

if ("enemykirby" in self && enemykirby != undefined) {
	with oPlayer {
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_EXTRA_3)) {
			vsp = 0;
			hsp = hsp*3/4;
			can_move = false;
			if (window == 2) {
				hsp = -2*spr_dir;
			}
			
			if (window == 2 && window_timer == 5) {
				current_ability = 0;
			}
		}
	}
}