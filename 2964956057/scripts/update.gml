if fps < 60 flowey_specialeffects = 0;

if !hitstop flowey_last_grunt--;

flowey_savecooldown--;

//play intro
if has_intro && get_gameplay_time() == 4 set_attack(2);

with oPlayer{
	if id != other.id && url == other.url other.flowey_morefloweys = 1;
	if !clone{
		if flowey_ustrong_quick_grab == other && !hitpause{
			hsp = 0;
			flowey_ustrong_quick_grab = noone;
		}
		if hit_player_obj != other && flowey_ustrong_quick_grab == other flowey_ustrong_quick_grab = noone;
	}
}

if ( (!place_meeting(x + (60 * spr_dir), y + 10, (asset_get("par_block"))) &&
!place_meeting(x + (60 * spr_dir), y + 10, (asset_get("par_jumpthrough")))) ||
place_meeting(x + (35 * spr_dir), y, (asset_get("par_block"))) ) && !free && state != PS_ATTACK_GROUND
    move_cooldown[AT_DSPECIAL] = 2;

if flowey_savecooldown || !flowey_saves_used || (y < get_stage_data(SD_TOP_BLASTZONE_Y) && !instance_exists(flowey_save)) move_cooldown[AT_USPECIAL] = 2;

if !free{
	if !flowey_saves_used && !flowey_pratprevent set_state(PS_PRATLAND);
	flowey_pratprevent = 0;
	flowey_saves_used = flowey_saves_max;
	flowey_grapples_used = 0;
	move_cooldown[AT_USPECIAL] = flowey_savecooldown + 1;
}

if instance_exists(flowey_vine) && instance_exists(grabp) && flowey_vine.hitbox_timer == 0 flowey_vine.hitbox_timer = 39;

if !instance_exists(flowey_vine){
	flowey_vine = noone;
	flowey_vineCheck = noone;
}

if has_rune("O") && instance_exists(flowey_save){
	with pHitBox if orig_player_id == other{
		if "has_struck_save" not in self{
			has_struck_save = 0;
		}
		if has_struck_save != 1 && attack != AT_FSPECIAL && place_meeting(x, y, player_id.flowey_save){
			if x <= player_id.flowey_save.x send_side = 1;
			else send_side = -1;
			player_id.flowey_save.hsp = lengthdir_x(kb_value, kb_angle) * (hit_flipper == 3? send_side:other.spr_dir);
			player_id.flowey_save.vsp = lengthdir_y(kb_value, kb_angle);
			has_struck_save = 1;
		}
	}
}

//rainbow code
if get_player_color(player) == 3 || (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4){
	trail_hue = make_color_rgb(get_color_profile_slot_r(3, 1), get_color_profile_slot_g(3, 1), get_color_profile_slot_b(3, 1));
	var flowey_rainbowtrail = [sprite_index, 1, 1/15, 0, 0, trail_hue, x, y, image_index, prev_spr_dir, 2];
	array_push(particles, flowey_rainbowtrail);
	with pHitBox if player_id == other && type == 2{
		var flowey_rainbowtrail = [sprite_index, 1, 1/15, 0, 0, other.trail_hue, x, y, image_index, spr_dir, 1];
		array_push(other.particles, flowey_rainbowtrail);
	}
	with flowey_save{
		var flowey_rainbowtrail = [sprite_index, 1, 1/15, 0, 0, other.trail_hue, x, y, image_index, spr_dir, 1];
		array_push(other.particles, flowey_rainbowtrail);
	}
	if instance_exists(flowey_vine){
		var flowey_rainbowtrail = [sprite_get("fspecial_vineend"), 1, 1/15, 0, 0, trail_hue, flowey_vine.x, flowey_vine.y, has_grab, prev_spr_dir, 1];
		array_push(particles, flowey_rainbowtrail);
	}
	prev_spr_dir = spr_dir;
	if array_length(particles) > 0{
		for(var e = 0; e < array_length(particles); e++){
			particles[@e][@1] -= particles[@e][@2];
			particles[@e][@6] += particles[@e][@3];
			particles[@e][@7] += particles[@e][@4];
			particles[@e][@5] = trail_hue;
			if particles[@e][@1] <= 0{
				var tpart = particles;
				particles = [];
				for (var h = 0; h < array_length(tpart); h++){
					if h != e{
						array_push(particles, tpart[h]);
					}
				}
			}
		}
	}
}
init_shader();

if attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 2 && window <= 4{
	set_ui_element(UI_OFFSCREEN, sprite_get("_offscreen_final_strong"));
}
else{
	set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
}

//genesis vfx
if genesis{
	if !hitpause genesis_shockwave_vfx = false;

	var reset_glitch_sound = true;
	with oPlayer if self != other && hit_player_obj == other && (state_cat == SC_HITSTUN || state == PS_TUMBLE) reset_glitch_sound = false;
	if reset_glitch_sound && genesis_sound_enabled{
		sound_volume(genesis_glitch_sound, 0, 1);
		genesis_sound_enabled = false;
	}
}

//dialogue buddy
diagchoice = [
	"Howdy! I'm Flowey. Flowey the Flower!",
	"Fighting me? You really are an idiot.",
	"You aren't afraid of a few friendliness pellets, are you?"
];
	
if "otherUrl" in self with pet_obj{
	if variable_instance_exists(id, "diag_text"){
		if !(other.otherURL == 2842873754 && get_player_color(2) != 9){
			diag_nrs_p1 = other.player; 
			diag_nrs = true;
		}
		switch diag_nrs_state{
			case 0: case 1:
				other.diag_index = 1;
			break;
			case 2:
				other.diag_index = 2;
			break;
		}
		switch other.otherURL{
			case 2802388684:
				diag_nrs_diag = [
					"I've never met a human with two SOULs before.",
					"* jumps away * Whoa, what kind of summon are you?!",
					"No need to be afraid. All I want is to take a close look at those SOULs you have."
				];
			break;
			case 2801695646:
				diag_nrs_diag = [
					"Another human! Where did you come from?",
					"Somewhere where flowers don't talk.",
					"Sounds boring. Let me give you a little excitement!"
				];
			break;
			case 2802530261:
				diag_nrs_diag = [
					"You better lower that cannon if you know what's good for you.",
					"* narrows eyes * Computer: Target locked.",
					"I'll bury that armor in a shallow grave!"
				];
			break;
			case 2825520992:
				diag_nrs_diag = [
					"Out of the way, idiot!",
					"I am King Dedede's loyal guard. I won't let you reach him!",
					"Ugh, all you royal guards are the same."
				];
			break;
			case 2802528159:
				diag_nrs_diag = [
					"Oh great, another one of Alphys' robots.",
					"* scans Flowey * *approaches *",
					"Well at least you don't sing."
				];
			break;
			case 2798199714:
				diag_nrs_diag = [
					"What is this pressure? Wh-why am I shaking?!",
					"* steps forward *",
					"No, stay back!"
				];
			break;
			case 2642265963:
				diag_nrs_diag = [
					"I'm not interested. Now leave, or I'll tear those stupid glasses off your face.",
					"ARE YOU SURE? I OFFER TOP NOTCH [Weed Killer]",
					"How about I offer you a swift death!"
				];
			break;
			case 2606409742:
				diag_nrs_diag = [
					"If I have to deal with one more of these stupid Koroks-",
					"* skids in front of Flowey and points his sword at him *",
					"And now a blonde-haired hippie. Just perfect!"
				];
			break;
			case 2841541558:
				diag_nrs_diag = [
					"So you're the tree I've heard so much about.",
					"And, you are the Flower that has disrupted my kingdom.",
					"Don’t worry. Once you’re gone, I’ll clean up the rest of it."
				];
			break;
			case 2839808881:
				diag_nrs_diag = [
					"Your soul is so bright and pure.",
					"* tilts head * Poy-poyo?",
					"It’s just what I need to achieve godhood!"
				];
			break;
			case 2843385011:
				diag_nrs_diag = [
					"Such darkness. It makes me feel right at home.",
					"* stares *",
					"Well, I think we both know what has to happen now."
				];
			break;
			case 2904134945:
				diag_nrs_diag = [
					"What kind of puppet are you?",
					"Puppet? I don’t think I understand.",
					"And you never will. You’re too dangerous to let go."
				];
			break;
			case 2842873754:
				diag_nrs_diag = [
					"Alright, freak, where’s that treasure chest?",
					"What’s in dat chest is never getting out.",
					"Oh, it will... I just have to get through you first."
				];
			break;
			case 2842873754:
				if get_player_color(2) == 9 diag_nrs_diag = [
					"Where the hell am I?!",
					"Wait, you’re not the plant I sent to N. M. E.",
					"You better send me back right now!"
				];
			break;
			case 2911048812:
				diag_nrs_diag = [
					"Oh look, a trashcan on wheels.",
					"YOU WOULD INSULT A DALEK? YOU WILL BE EXTERMINATED!",
					"If you try, I'll throw you in a trash compactor!"
				];
			break;
			case 2876246765:
				diag_nrs_diag = [
					"Who needs 7 human SOULs when I can have these!",
					"* a low noise emanates from the gems *",
					"Wait, no! You're supposed to obey me!"
				];
			break;
			case 2311095319: case 2945062156: case 2944680077:
				diag_nrs_diag = [
					"So, you’re going to stop me from getting that princess's power?",
					"Uh-huh. * Mario glares at Flowey cautiously *",
					"Then I’m gonna make your face match your outfit, fatty!"
				];
			break;
			case 2946784030:
				diag_nrs_diag = [
					"I don’t have any treasure, you weirdo.",
					"Those six lights beg-a to differ.",
					"If you don’t start running, I’m gonna have 7 lights, freak!"
				];
			break;
			case 2948285612:
				diag_nrs_diag = [
					"Wow, those are some ugly-looking teeth.",
					"* grins *",
					"Oh, don’t even try it, compost."
				];
			break;
			case 2904498757:
				diag_nrs_diag = [
					"Would you stop screaming for five seconds?!",
					"* continues to scream in rage *",
					"All this because I killed a stupid tomato?!"
				];
			break;
			case 2957312834:
				diag_nrs_diag = [
					"So, do you know what happens now?",
					"Yes. When two merciless killers meet,-",
					"Only one walks away!"
				];
			break;
			case 1869814191:
				diag_nrs_diag = [
					"Well. if it isn't the smiley trashbag himself.",
					"That expression... 375, right?",
					"Guh! Well, it won’t be 376!"
				];
			break;
		}
	}
}