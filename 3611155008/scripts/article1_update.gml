timer++;
is_hittable = (state == 1 || (state == 2 && !nymph_lockout));
if nymph_lockout > 0 nymph_lockout--;
if !hitstop || abs(hitstop) < 1 hitstop = 0;
switch state{
	case 0: //spawn
	sprite_index = sprite_get("nymphspawn");
	image_index = timer/5;
	if timer >= 14 state_set(1);
	break;
	
	case 1: //idle and move
	sprite_index = sprite_get(nymphturn? "nymphturn": "nymphidle");
	image_index = (nymphturn? (10 - nymphturn)/5: timer/5);
	if player_id.nymphcontrol{
		if player_id.right_down - player_id.left_down == -spr_dir{
			spr_dir *= -1;
			nymphturn = 10;
		}
		hsp = lerp(hsp, lengthdir_x(nymphspeed, player_id.joy_dir)*!player_id.joy_pad_idle, (player_id.joy_pad_idle? nymphstopcoeff: .1));
		vsp = lerp(vsp, lengthdir_y(nymphspeed, player_id.joy_dir)*!player_id.joy_pad_idle, (player_id.joy_pad_idle? nymphstopcoeff: .1));
		if player_id.attack_pressed{
			player_id.nymphcontrol = 0;
			state_set(3);
		}
		if player_id.shield_pressed{
			player_id.nymphcontrol = 0;
			state_set(5);
		}
	}else{
		hsp = lerp(hsp, 0, nymphstopcoeff);
		vsp = lerp(vsp, 0, nymphstopcoeff);
	}
	image_angle = lerp(0, -70, vsp/nymphspeed)*spr_dir;
	if hsp != 0 && place_meeting(x + hsp, y, asset_get("par_block")) hsp*= -1;
	if vsp != 0 && place_meeting(x, y + vsp, asset_get("par_block")) vsp*= -1;
	break;
	
	case 2: //hitstun
	sprite_index = sprite_get("nymphidle");
	image_index = timer/5;
	hsp = lerp(hsp, 0, .03);
	vsp = lerp(vsp, 0, .03);
	image_angle = lerp(0, -70, vsp/nymphspeed)*spr_dir;
	if hsp != 0 && place_meeting(x + hsp, y, asset_get("par_block")) hsp*= -1;
	if vsp != 0 && place_meeting(x, y + vsp, asset_get("par_block")) vsp*= -1;
	if abs(hsp) < .2 && abs(vsp) < .2 state_set(1);
	break;
	
	case 3: //splode
	if timer == 1 sound_play(sound_get("CharSFX_Bow_Preattack"), 0, noone, 1, 1.2);
	if timer == 20 sound_play(sound_get("CharSFX_Bow_Explode"));
	player_id.nymph_cooldown = 240;
	sprite_index = sprite_get(timer >= 20? "explode": "nymphdies");
	spark_size = 2 - timer/10
	hsp = lerp(hsp, 0, .1);
	vsp = lerp(vsp, 0, .1);
	image_angle = lerp(image_angle, 0, .2);
	if timer == 80 && qi_stack{
		timer -= 10*min(qi_stack, 3);
		qi_stack = max(qi_stack - 3, 0);
		qi_repeat = 1;
	}
	if timer == 50 && (qi_stack || qi_repeat) sound_play(sound_get("CharSFX_Bow_Explode_Continue"));
	if has_rune("D") && timer >= 55 + 10*qi_stack{
		image_xscale = lerp(image_xscale, 4, .2);
		image_yscale = lerp(image_yscale, 4, .2);
	}
	if timer == clamp(timer, 25, 75) && timer%10 == 5{
		var t = create_hitbox(AT_DSPECIAL, 1 + (timer==75)*!qi_stack, x, y);
		t.damage += qi_repeat;
		if has_rune("D"){
			t.image_xscale *= image_xscale/2;
			t.image_yscale *= image_yscale/2;
		}
	}
	if timer >= 95{
		instance_destroy(self);
		exit;
	}
	image_index = (timer >= 20? (timer-20)/5: .3*timer);
	break;
	
	case 4: //despawn
	sprite_index = sprite_get("nymphbreak");
	image_index = timer/4;
	spark_alpha = 1 - timer/8;
	player_id.nymph_cooldown = 120;
	if timer >= 16{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 5: //retreat
	sprite_index = sprite_get("nymphretreat");
	image_index = timer/4;
	spark_size = 2 - timer/12
	player_id.nymph_cooldown = 120 + qi_stack*20;
	if timer == 1{
		player_id.qi_stack = min(5, player_id.qi_stack + ceil(qi_stack/2));
		sound_play(sound_get("CharSFX_Butterfly_Blink_v" + string(random_func(134, 3, 1) + 1)));
		sound_play(sound_get("CharSFX_Butterfly_Enter_v" + string(random_func(72, 3, 1) + 1)));
		if qi_stack{
			sound_play(sound_get("IntSFX_Butterfly_Success_Bass"));
			sound_play(sound_get("CharSFX_ChargeParry_Success_Gong_v" + string(random_func(3, 4, 1) + 1)));
		}
	}
	if timer >= 12{
		instance_destroy(self);
		exit;
	}
	break;
}
if nymphturn nymphturn--;

#define state_set
/// state_set(st, t = 0;)
var st = argument[0];
var t = argument_count > 1 ? argument[1] : 0;;
state = st;
timer = t;