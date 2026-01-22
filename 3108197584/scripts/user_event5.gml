/*
define this in init.gml

aetherclacks_user_event = #

# is the number of the user event script you'll be using, named user_event#.gml

in said user event you need to paste the following code structure
*/

#macro HG_HIT_COLOR 59

//your ball, in other_ calls it refers to other people's balls
var _ball = obj_stage_main.workshop_call_ball;

//usable in weapon_init, weapon_update, weapon_destroyed, weapon_draw
var _weapon = obj_stage_main.workshop_call_weapon;

//usable in hit calls
var _hit_ball = obj_stage_main.workshop_hit_ball; //ball that hit you/that you hit
var _hit_weapon = obj_stage_main.workshop_parry_weapon; //weapon that you parried
var _hit_damage = obj_stage_main.workshop_hit_damage; //damage you took/damage dealt

//usable in bounce calls
var _bounce_obj = obj_stage_main.workshop_bounce_obj;

//usable in other_ scripts, refers to the instance running the other_ script
var _other_ball = obj_stage_main.workshop_other_ball;

//usable in define_hitboxes and define_hitboxes only
var _atk = 1+player;
var _num = 1;

//usable in hitbox calls
var _hbox = obj_stage_main.workshop_hitbox;

//usable in ui calls
var _ui_obj = obj_stage_main.text_id;
var _ui_idx = obj_stage_main.workshop_ui_idx;

var _alt = get_player_color(player);
if !_alt _alt = 32;
var _col = make_color_rgb(get_color_profile_slot_r(_alt, 1), get_color_profile_slot_g(_alt, 1), get_color_profile_slot_b(_alt, 1));

switch obj_stage_main.workshop_call{
	case "init": //when the ball is created
	//ui data
	_ball.workshop_name = "Gun";
	_ball.workshop_color = _col;
	_ball.workshop_ult = "Snipe Shot";
	
	//ball data
	_ball.ball_max_health = 130;
	_ball.ball_radius = 26;
	_ball.ball_grav = .1;
	_ball.ball_elas = 1;
	_ball.ball_max_speed = 6;
	_ball.ball_rotation_switch = 0;
	_ball.ball_rotation_speed = 3;
	
	//ult data
	_ball.ball_skill_cd = 150;
	
	//weapon setup
	_weapon_num(_ball, 1); //how many weapons does it have
	rifle = _add_weapon(0, obj_stage_main.workshop_weapon_index, _ball);
	
	//walls setup
	var t = obj_stage_main.COORD_ROOM_TOP;
	var b = obj_stage_main.COORD_ROOM_BOTTOM;
	var l = obj_stage_main.COORD_ROOM_LEFT;
	var r = obj_stage_main.COORD_ROOM_RIGHT;
	room_walls = [[[l, t], [l, b]], [[l, b], [r, b]], [[r, b], [r, t]], [[r, t], [l, t]]];
	variable_instance_set(self, "bounce_points", []);
	variable_instance_set(self, "bounce_draw_timer", 0);
	variable_instance_set(self, "rifle_launch_dir", 0);
	ricochets_num = 4;
	successful_snipes = 0;
	headshots_count = 0;
	sniper_damage_amp = 3;
	sniper_head_redux = 10;
	break;
	
	case "weapon_init":
	_weapon.weapon_type = "melee";
	_weapon.weapon_sprite = aetherclacks_weapon;
	_weapon.weapon_mask = aetherclacks_weapon_hurt;
	_weapon.weapon_xscale = 2.5;
	_weapon.weapon_yscale = 2.5;
	_weapon.damage = 2;
	_weapon.hit_effect = obj_stage_main.hfx_omni;
	_weapon.hit_color = _col;
	_weapon.sound_effect = asset_get("sfx_blow_medium1");
	break;
	
	case "define_hitboxes":
	with obj_stage_main{//necessary for this to work
	
		//snipe
		set_hitbox_value(_atk, _num, HG_HITBOX_TYPE, 2);
		set_hitbox_value(_atk, _num, HG_LIFETIME, 4);
		set_hitbox_value(_atk, _num, HG_WIDTH, 30);
		set_hitbox_value(_atk, _num, HG_HEIGHT, 30);
		set_hitbox_value(_atk, _num, HG_DAMAGE, 5);
		set_hitbox_value(_atk, _num, HG_VISUAL_EFFECT, 1);
		set_hitbox_value(_atk, _num, HG_VISUAL_EFFECT_X_OFFSET, 0);
		set_hitbox_value(_atk, _num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
		set_hitbox_value(_atk, _num, HG_HIT_COLOR, _col);
		set_hitbox_value(_atk, _num, HG_EXTRA_HITPAUSE, 10);
		
		set_hitbox_value(_atk, _num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
		set_hitbox_value(_atk, _num, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_GRAVITY, 0);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_GROUND_FRICTION, 0);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_AIR_FRICTION, 0);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_DESTROY_EFFECT, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_UNBASHABLE, 1);
		set_hitbox_value(_atk, _num, HG_PROJECTILE_PLASMA_SAFE, 1);
	}
	break;
	
	case "ball_update":
	if bounce_draw_timer bounce_draw_timer--;
	break;
	
	case "ball_passive_effect":
	if _ball.ball_skill {
		var _dir = rifle.image_angle;
		if _dir%90 == 0{
			rifle.image_angle++;
			_dir++;
		}
		var _dx = dcos(_dir);
		var _dy = -dsin(_dir);
		var target = noone;
		x = _ball.x;
		y = _ball.y;
		mask_index = sprite_get("aetherclacks_snipe_collider");
		bounce_points = [array_clone([x, y])];
		image_angle = _dir;
		spr_dir = 1;
		image_xscale = abs(room_width*2);
		var _list = ds_list_create();
		var _i = 0;
		repeat ricochets_num{
			var _num = instance_place_list(floor(x), floor(y), obj_stage_article, _list, true);
			_i = 0;
			if _num repeat(_num){
				var _obj = _list[|_i];
				if _obj.num == 1 && _obj != _ball target = _obj;
				_i++;
			}
			ds_list_clear(_list);
			if target == noone{
				var sniperline = [[x, y], [x + _dx*image_xscale, y + _dy*image_xscale]];
				var _j = 0;
				repeat 4{
					var bouncepoint = line_intersection(sniperline, room_walls[_j]);
					if bouncepoint != -1 break;
					_j++;
				}
				if bouncepoint == -1 break;
				array_push(bounce_points, array_clone(bouncepoint));
				var _dir = 90*_j - angle_difference(_dir+180, 90*_j);
				var _dx = dcos(_dir);
				var _dy = -dsin(_dir);
				x = bouncepoint[0];
				y = bouncepoint[1];
				image_angle = _dir;
			}else break;
		}
		var dmg = 5 + sniper_damage_amp*(successful_snipes);
		if target != noone{
			var lastp = bounce_points[array_length(bounce_points)-1];
			var _hit = point_on_line(lastp, [lastp[0] + _dx*1000, lastp[1] + _dy*1000], [target.x, target.y]);
			array_push(bounce_points, _hit);
			if point_distance(_hit[0], _hit[1], target.x, target.y) <= target.ball_radius/2{
				successful_snipes++;
				headshots_count++;
				_ball.ball_skill_cd = max(10, _ball.ball_skill_cd - sniper_head_redux);
				sound_play(asset_get("sfx_abyss_hex_hit"));
			}
			successful_snipes++;
			ricochets_num++;
		}else{
			successful_snipes = 0;
			ricochets_num = 4;
		}
		sound_play(asset_get("sfx_boss_fireball_land"));
		sound_play(sound_get("sfx_sniper_fire"));
		var _hit = bounce_points[array_length(bounce_points)-1];
		var hfx = spawn_hit_fx(_hit[0], _hit[1], snipe_hit);
		hfx.depth = _ball.depth-2;
		var _hbox = ball_create_hitbox(_hit[0], _hit[1], _atk, 1, _ball);
		_hbox.damage = dmg;
		sound_play(asset_get("sfx_blow_heavy1"), 0, noone, .8, .9);
		sound_play(asset_get("sfx_hod_charged_uspecial_hit"), 0, noone, .6, 1.5);
		rifle_launch_dir = _dir;
		_ball.ball_skill_timer = 0;
		_ball.ball_skill = 0;
		bounce_draw_timer = 20;
		ds_list_destroy(_list);
		x = room_width/2;
		y = room_height/2;
		rifle.weapon_sprite = aetherclacks_weapon;
	}else{
		_ball.ball_skill_timer += _ball.ball_skill_timer<_ball.ball_skill_cd;
		if _ball.ball_skill_timer >= _ball.ball_skill_cd _ball.ball_skill = 1;
		if _ball.ball_skill_timer == floor(_ball.ball_skill_cd*2/3){
			sound_play(sound_get("sfx_sniper_load"));
			rifle.weapon_sprite = aetherclacks_weapon2;
		}
	}
	break;
	
	case "weapon_pre_draw":
	if _ball.ball_init break;
	if bounce_draw_timer{
		var _g = 0;
		var col = make_color_hsv(color_get_hue(_col), color_get_saturation(_col)*0.49, color_get_value(_col));
		var coeff = clamp(bounce_draw_timer/15, 0, 1);
		draw_set_alpha(coeff);
		repeat array_length(bounce_points)-1{
			var p1 = bounce_points[_g];
			var p2 = bounce_points[_g+1];
			draw_line_width_color(p1[0], p1[1], p2[0], p2[1], 6*(coeff), col, col);
			_g++;
		}
		_g = 0;
		repeat array_length(bounce_points)-1{
			var p1 = bounce_points[_g];
			var p2 = bounce_points[_g+1];
			draw_line_width_color(p1[0], p1[1], p2[0], p2[1], 2*(coeff), c_white, c_white);
			_g++;
		}
		draw_set_alpha(1);
	}
	break;
	
	case "hitbox_hit":
	_ball.hitpause = 1;
	_ball.hitstop = 10;
	_hit_ball.hitpause = 1;
	_hit_ball.hitstop = 10;
	_hit_ball.ball_hsp = 10*dcos(rifle_launch_dir);
	_hit_ball.ball_vsp = -10*dsin(rifle_launch_dir);
	break;
	
	case "ui_update":
	_ui_obj.info1[player-1] = "Sniper damage: "+string(5 + sniper_damage_amp*successful_snipes);
	_ui_obj.info2[player-1] = "Max Ricochets: "+string(ricochets_num);
	_ui_obj.info3[player-1] = "Headshots: "+string(headshots_count);
	break;
	
	default:
	/*if the code in this script ends up going over the token limit, put a new user_event call here that refers to the user event after this one
	
	user_event(aetherclacks_user_event+1);
	
	like this, then remember to paste back all the setup stuff that's in here
	*/
	break;
}

/*
_event_
has to be replaced with one of the following event ids

####ball events####
"init"					runs when the ball is created
"define_hitboxes"		runs after init, can be used to create hitboxes of any kind

"ball_update"			runs every frame after physics logic
"ball_pre_update"		runs every frame before physics logic
"ball_passive_effect"	runs while not in hitstop, used to handle ult and other passive logic

"ball_launch"			runs once when the ball is launched at the start, can be used to alter the launch trajectory
"ball_bounce"			runs when the ball bounces against something, a wall or an obstacle
"ball_got_hit"			runs when the ball gets hit
"ball_death"			runs when the ball's hp drop below 0 and the ball explodes
"ball_effects"			runs when your ball hits someone else's
"ball_touch_effects"	runs when two balls collide

"ball_pre_draw"			draws behind the ball
"ball_post_draw"		draws on top of the ball
"ball_hud_draw"			allows you to draw on top of the small hud that sits on the ball

####weapon events####
"weapon_init"			runs when you create a weapon

"weapon_update"			runs every frame before base weapon logic

"weapon_destroyed"		runs once when the weapon gets destroyed
"weapon_parry"			runs when two weapons collide
"weapon_hit_ball"		runs when a weapon hits a ball

"weapon_pre_draw"		draws below the weapon
"weapon_draw"			draws above the weapon

####hitbox events####
"hitbox_init"			runs when you create a hitbox

"hitbox_update"			runs every frame, for hitbox logic

"hitbox_hit"			runs once when a hitbox you own hits a player
"hitbox_destroyed"		runs once when a hitbox is destroyed

####other events####
"other_init"			runs from the perspective of other balls when they are created

"other_ball_update"		runs every from the perspective of other balls

"other_pre_draw"		allows you to draw below other balls, it runs from their perspective
"other_post_draw"		allows you to draw above other balls, it runs from their perspective
"other_hud_draw"		allows you to draw above other balls's small huds, it runs from their perspective

####ui events####
"ui_update"				allows you to handle UI object variables that can be later used for drawing
"ui_draw"				draws above the portrait UI
*/

#define _weapon_num(_ball, _num)
{
	_ball.ball_weapon_num = _num;
	_ball.ball_weapon = array_create(_num);
}

#define _add_weapon(_index, _id, _ball)
/*
an setting _id to
obj_stage_main.workshop_weapon_index
will make it use a workshop weapon, which will enable weapon calls

otherwise it can be set to a basecast weapon
1:		fire
2:		water
3:		air
4:		earth
5:		smoke
6:		vine
7:		cloud
8:		ice
9:		spirit
10:		poison
11:		plasma
12:		forest
13:		mech
14:		shovel
23:		wind
*/
{
	var _wpn = noone;
	with obj_stage_main var _wpn = instance_create(x, y, "obj_stage_article", 5);
	_ball.ball_weapon[@_index] = _wpn;
	_ball.ball_weapon[@_index].parent = _ball;
	_ball.ball_weapon[@_index].weapon_index = _id;
	_ball.ball_weapon[@_index].ball_player = _ball.ball_player;
	
	_ball.ball_weapon[@_index].weap_dir = spr_dir;
	_ball.ball_weapon[@_index].depth = 2;
	
	return _ball.ball_weapon[_index];
}

#define ball_create_hitbox(_x, _y, _atk, _num, _parent)
{
	var _hbox = noone;
	with _parent _hbox = create_hitbox(_atk, _num, floor(_x), floor(_y));
	_hbox.parent = _parent;
	_hbox.player = player;
	
	_hbox.hit_color = c_white;
	
	return _hbox;
}

#define line_intersection(line1, line2)
var A = line1[0];
var B = line1[1];
var C = line2[0];
var D = line2[1];
var a1 = B[1] - A[1]
var b1 = A[0] - B[0]
var c1 = a1*(A[0]) + b1*(A[1])

var a2 = D[1] - C[1]
var b2 = C[0] - D[0]
var c2 = a2*(C[0]) + b2*(C[1])

var determinant = a1*b2 - a2*b1

if (determinant == 0) return -1;

var tx = (b2*c1 - b1*c2)/determinant
var ty = (a1*c2 - a2*c1)/determinant

if max(point_distance(tx, ty, C[0], C[1]), point_distance(tx, ty, D[0], D[1])) > point_distance(C[0], C[1], D[0], D[1]) return -1;
if floor(tx) == clamp(floor(tx), min(A[0], B[0]), max(A[0], B[0])) && floor(ty) == clamp(floor(ty), min(A[1], B[1]), max(A[1], B[1])) && tx != A[0] && ty != A[1] return [tx, ty];
return -1;

#define point_on_line(a, b, p)
var ap = [p[0] - a[0], p[1] - a[1]];
var ab = [b[0] - a[0], b[1] - a[1]];
var dv = dot_product(ap[0], ap[1], ab[0], ab[1]) / dot_product(ab[0], ab[1], ab[0], ab[1]);
var result = [a[0] + dv*ab[0], a[1] + dv*ab[1]];
return result
