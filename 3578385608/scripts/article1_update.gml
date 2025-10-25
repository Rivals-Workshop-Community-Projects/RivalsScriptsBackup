//article1_update
closeby_alpha = lerp(closeby_alpha, -.2 + closeby*1.4, .2);
closeby = place_meeting(x, y, player_id);
vsp = clamp(vsp+.5, vsp, 8)*free;
timer++;
is_hittable = state == 2;
can_be_hit[@player] = 2;
meth_alpha = lerp(meth_alpha, -.1 + (state == 2)*1.2, .1);

if hitb_tim hitb_tim--;
else hitb_list = [];

switch state{
	case 0:
	sound_stop(bubble_sfx);
	image_index = clamp(timer/4, 0, 3);
	if timer == 4{
		sound_play(sound_get("bottles_clink"));
		sound_play(asset_get("sfx_blow_medium1"), 0, noone, .8, .6);
	}
	if timer >= 16 state_set(1);
	break;
	
	case 1:
	sound_stop(bubble_sfx);
	meth = 0;
	image_index = 4;
	break;
	
	case 2:
	player_id.draw_jesse = 2;
	if meth < player_id.meth_cook_time{
		if timer == 10 sound_play(player_id.land_sound);
		if timer == 25 bubble_sfx = sound_play(sound_get("bubbling_loop"), 1, noone, 0);
		sound_volume(bubble_sfx, .6, 60);
		meth++;
		if meth >= player_id.meth_cook_time{
			timer = 0;
			sound_stop(bubble_sfx);
			sound_play(sound_get("ding"));
		}
	}else{
		is_hittable = 0;
		if timer == 12{
			meth_hb = create_hitbox(AT_DSPECIAL, 1, x + 12*spr_dir, y - 54);
			meth_hb.draw_xscale = 1;
			meth_hb.can_hit_self = 1;
		}
		if timer >= 12{
			if !instance_exists(meth_hb) state_set(4);
			else meth_hb.hitbox_timer = 0;
		}
	}
	break;
	
	case 3:
	if meth && timer < 16 player_id.draw_jesse = 2;
	sound_stop(bubble_sfx);
	instance_destroy(meth_hb);
	image_index = clamp(6 + timer/4, 6, 19);
	if timer == 4 sound_play(asset_get("sfx_blow_medium2"), 0, noone, .8, .6);
	if timer >= 54{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 4:
	player_id.draw_jesse = 2;
	sound_stop(bubble_sfx);
	if timer == 10 sound_play(sound_get("taunt"));
	if timer >= 72 state_set(1);
	break;
}

#define state_set
/// state_set(st, tim = 0;)
var st = argument[0];
var tim = argument_count > 1 ? argument[1] : 0;;
state = st;
timer = tim;