t++;
if invincible invincible--;
anim_spd = 4 + 2*!invincible
is_hittable = (state <= 1)
switch state{
	case 0: //spawn
	if t >= 2*anim_spd state_set(1);
	break;
	
	case 1: //idle
	if t >= 500 state_set(2);
	break;
	
	case 2: //despawn
	if t >= 2*anim_spd{
		instance_destroy(self);
		exit;
	}
	break;
	
	case 3: //splode
	anim_spd = 4;
	image_alpha = .7 + .15*t/anim_spd
	if t == 2*anim_spd sound_play(asset_get("sfx_ell_fist_explode"));
	if t == 3*anim_spd with explosion_owner create_hitbox(AT_DSPECIAL, 2, other.x, other.y);
	if t >= 7*anim_spd{
		instance_destroy(self);
		exit;
	}
	break;
}
sprite_index = sprite_get("cloud" + sprites[state] + (invincible && state != 3? "_invincible": ""));
image_index = t/anim_spd;



#define state_set
/// state_set(st, tm = 0;)
var st = argument[0];
var tm = argument_count > 1 ? argument[1] : 0;;
state = st;
t = tm;