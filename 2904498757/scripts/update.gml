// ===== MACH MODE =====
if nspec_mach_timer > 0 {
	nspec_mach_timer -= 1;
	move_cooldown[AT_NSPECIAL] = 2;
	
	// physics
	max_jump_hsp = nspec_mach_jump_hsp;
	if !free { frict = ground_friction * nspec_mach_frict_mult; }
	
	// sound effects
	if nspec_mach_sound == noone { // loop
		nspec_mach_sound = sound_play(sfx_mach_loop, true, 0);
	}
	else if nspec_mach_timer < 30 {
		sound_volume(nspec_mach_sound, nspec_mach_timer / 30, 0);
	}
	if nspec_mach_timer == 0 { // end
		//sound_play(sfx_mach_end);
	}
}
else {
	// physics
	max_jump_hsp = normal_max_jump_hsp;
	
	// sound effects
	if nspec_mach_sound != noone {
		sound_stop(nspec_mach_sound);
		nspec_mach_sound = noone;
	}
}

// store afterimage info
var f = nspec_ai_freq
if get_gameplay_time() % f == 0 {
	if nspec_mach_timer > 0 {
		nspec_ai_cur = min(nspec_ai_cur + 1, nspec_ai_tot, ceil(nspec_mach_timer/f));
	}
	else {
		nspec_ai_cur = max(nspec_ai_cur - 1, 0);
	}
	
	nspec_ai_ind = (nspec_ai_ind + 1) % nspec_ai_tot;
	nspec_afterimages[nspec_ai_ind] = {
		sprite: sprite_index,
		subimg: image_index,
		x: x,
		y: y,
		xscale: (1 + small_sprites) * spr_dir,
		yscale: 1 + small_sprites,
		rot: spr_angle,
		col: (get_gameplay_time() % (f*2) < f ? $5555FF : $77FF77),
		alpha: image_alpha
	}
}

// ===== LATE ATTACK UPDATE =====
var should_stop_uspec_sound = true;
if state == clamp(state, 5, 6) switch attack {
    case AT_UAIR:
        if window >= 2 && image_index < 4 { hud_offset = 30; }
        break;
    case AT_UTILT:
        if window >= 2 && image_index < 8 { hud_offset = 70; }
        break;
    case AT_USTRONG:
    	if window >= 3 && image_index < 10 { hud_offset = 80; }
    	break;
	case AT_USPECIAL:
		if window == 1 { should_stop_uspec_sound = false };
		else if window >= 2 && image_index < 13 { hud_offset = 70; }
		break;
	case AT_NSPECIAL:
		if window == 5 && window_timer == 0 && !hitpause {
			super_armor = false;
			sound_play(sfx_mach_dash);
		}
		break;
    case AT_FTHROW:
        if window == 3 && window_timer == 0 && !hitpause {
            sound_play(sfx_fthrow1, false, noone, 0.6, 0.7);
            sound_play(sfx_fthrow2, false, noone, 0.6, 0.8);
        }
        break;
    case AT_DSTRONG:
        if window == 8 && window_timer == 0 {
            var cheese_hsp, cheese_vsp;
            var cheese_add = strong_charge / 40;
            
            if up_down {
            	cheese_hsp = 2;
            	cheese_vsp = -8;
            }
            else if down_down {
            	cheese_hsp = 6;
            	cheese_vsp = -4;
            }
            else {
            	cheese_hsp = 3;
            	cheese_vsp = -6;
            }
            
            var cheese = create_hitbox(attack, 4, x + 60*spr_dir, y - 38);
			cheese.hsp = (cheese_hsp + cheese_add) * spr_dir;
			cheese.vsp = cheese_vsp - cheese_add;
        }
        break;
    case AT_TAUNT:
    	if window == 3 && window_timer == 0 {
    		var snd = taunt_sfx_array[random_func(0, 3, true)];
    		taunt_sound = sound_play(snd, false, noone, 1.2);
    	}
    	break;
}
else { // if not attacking
	jab_parried = false;
}

if should_stop_uspec_sound {
	if uspec_sound != noone {
		sound_stop(uspec_sound);
		uspec_sound = noone;
	}
}

// ===== STORAGE =====
was_free = free;


//Amber hug compatibility
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{
	with (amber_herObj) //Access Amber's player object and set the values
	{
		//Set the window values for Amber's hugging. DO NOT change Amber's sprites
		//in the attack_values
	    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("amber_peppino")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
	}
	//Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
	oPlayerHugAmberState = 2;
	
	//Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}

// dialogue compat
if otherUrl != 0 && diag_nrs_diag[0] == noone {
	switch string(otherUrl) {
		case "2802388684":
			diag_nrs_diag = [
			"You want-a what?",
			"One ramen pizza, extra pork.",
			"Wait... YOU'RE THE KID FROM THE PHONE!"];
			break;
		case "2801695646":
			diag_nrs_diag = [
			"I've finally found-a you, Snake from Metal Gear Solid!",
	        "Who the hell are you?",
	        "The guy who wants-a his pizza boxes back!"];
			break;
		case "2802530261":
			diag_nrs_diag = [
	        "Wow Samus Aran from Metroid, what are you-a doing here?",
	        "*gestures towards a comically large pile of X-Parasites",
	        "Wait, so these aren't-a toppings?"];
			break;
		case "2825520992":
			diag_nrs_diag = [
	        "I can't believe I'm-a delivering to royalty.",
	        "Halt, I've been ordered to take the pizza to His Majesty.",
	        "Oh, sure. Wait, why don't you have-a money?"];
	        break;
	    case "2802528159":
	    	diag_nrs_diag = [
	        "Maybe I shouldn't-a taken that right turn at Artaria.",
	        "*chitters",
	        "What was- YEAHHHHHHHHHHHH?!"];
	    	break;
		case "2798199714":
			diag_nrs_diag = [
	        "I wonder if I could sell-a this crystal.",
	        "*shatters crystal prison",
	        "Well, so much for-a that idea."];
	        break;
	    case "2642265963":
	    	diag_nrs_diag = [
	        "You know Mr. Stick, there's something-a different about you.",
	        "OH I JUST GOT [trims at low price]! NOW HAND OVER THE KROMER.",
	        "Kromer?! Oh no, I'm-a not falling for that scam again!."];
	        break;
	    case "2606409742":
	    	diag_nrs_diag = [
	        "Oh my gosh, Link from The Legend of Zelda, what do you want?",
	        "*points at a nearby crying Korok",
	        "I-a tried to warn him I was running through!"];
	    	break;
		case "2841541558":
	        diag_nrs_diag = [
	        "Huh, I must've-a taken a wrong turn.",
	        "Halt, human! You have trespassed in my forest.",
	        "Oh, I'm so- wait, apple pizza!"];
			break;
		case "2839808881":
			diag_nrs_diag = [
	        "Oh my gosh, it's Kirby fro...",
	        "*he's covered in marinara and is standing beside a pile of pizza boxes",
	        "So you've-a chosen death."];
			break;
		case "2843385011":
			diag_nrs_diag = [
	        "*shivers* What are you? ",
	        "*draws blade",
	        "I'm not-a backing down!"];
	        break;
	    case "2904134945":
	    	diag_nrs_diag = [
	        "Why is it-a so cold? It's worse than that freezer.",
	        "I'm sorry sir, I can't control it very well.",
	        "YEAHHHHHHH ICE DEER!"];
	    	break;
		case "2842873754":
			diag_nrs_diag = [
	        "One pizza for King Dedede!",
	        "Hey wait? where's the sausage?",
	        "I'm so sorry. Please put the hammer down."];
	        break;
	    case "2842873754":
	    	if get_player_color(2) == 9 {
				diag_nrs_diag = [
				"One pizza for King Dedede.",
				"I'll take that!",
				"Hey. you still need to pay!"];
	    	}
	    	else { diag_nrs_diag = [noone]; }
	    	break;
		case "2911048812":
			diag_nrs_diag = [
	        "Phew, I'm-a full. Oh good, a trash can.",
	        "HALT! I AM NOT A TRASH CAN! I AM A DALEK, AND YOU SHALL BE EXTERMINATED!",
	        "Oh come on. Even the trash-a cans hate me."];
			break;
		case "2876246765":
			diag_nrs_diag = [
	        "So these are supposed-a to make me stronger?",
	        "*begins to rotate at high speeds",
	        "Wait, that's way too fast!"];
	        break;
	    case "2311095319":
	    case "2945062156":
	    case "2944680077":
	        diag_nrs_diag = [
	        "Oh, it's Super Mario from Super Mario Bros.! What do you need? ",
	        "*taps his foot and points at a large busted pipe",
	        "Oh %$!^!"];
	        break;
	    case "2946784030":
	        diag_nrs_diag = [
	        "Wario from Wario Land 4, what do you want?",
	        "Royalties, chump!",
	        "*gulps"];
	        break;
	    case "2948285612":
	        diag_nrs_diag = [
	        "Wow, what an odd-a garden?",
	        "*curious growl",
	        "Oh no, your aren't-a ruining this run!"]
	        break;
	    case "2904498757":
	        diag_nrs_diag = [
	        "Oh, not again.",
	        "Oh, not again.",
	        "Stop copying me!"];
	        break;
	    case "2990315396":
	        diag_nrs_diag = [
	        "NOISEEEEEEE!!!!!!!",
	        "Woah, Italian man, calm down!",
	        "YOU PUT PINEAPPLE ON ALL OF MY PIZZA!"];
	        break;
	    case "1875062006":
	        diag_nrs_diag = [
	        "Oh god, not another cowboy",
	        "* You hesitantly draw your gun.",
	        "Wait is that-a real...YEAHHHHHHH!?"]
	        break;
	    case "3327565446":
	        diag_nrs_diag = [
	        "Sorry Snick i'm going to the real SAGE this year",
	        "That's fine.",
	        "Oh that was unexpect.... wait why are your eyes red?"]
	        break;
	    case "3383638884":
	        diag_nrs_diag = [
	        "Oh no. not-a you.",
	        "Grah!",
	        "YEAHHHHHHH!"];
	        break;
	    case "3377296434":
	        diag_nrs_diag = [
	        "Gustavo! Move!",
	        "Hey peppino, what's the rush?",
	        "30 minutes or less delivery! Now move!"]
	        break;
	}
}

if diag_nrs_diag[0] != noone {
	with pet_obj {
		if variable_instance_exists(id,"diag_text") {
			diag_nrs_p1 = other.player; 
			diag_nrs = true; 
			diag_nrs_diag = other.diag_nrs_diag;
		}
		
		switch diag_nrs_state {
			case 0: //First Message
				other.diag_index = 1;
				break;
			case 1: //Second Message
				other.diag_index = 1;
				break;
			case 2: //Last Message
				other.diag_index = 2;
				break;
		}
	}
}
