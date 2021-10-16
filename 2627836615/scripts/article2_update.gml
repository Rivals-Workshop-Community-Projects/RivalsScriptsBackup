
var local_player = noone;

var i, ar, divvy = 0, divx = 0, divy = 0, kart = obj_stage_main.kart_ins, xpos, ypos, kid;

var divvy = 0;
var divx = 0;
var divy = 0;
var kart = obj_stage_main.kart_ins;

for (i = 1; i <= 4; i++) {if get_player_hud_color(i) == 6612290 {local_player = i; break;}}

initted -= sign(initted);
if initted == 1 {
	initted = true;
	ar = array_create(5, noone);
	with (oPlayer) {
		ar[@player] = id;
	}
	with (obj_stage_article) {
		if num == 1 || num == 111 {
			ar[@play] = noone;
		}
	}
	var ins;
	for (i = 4; i >= 1; i--) {
		if ar[i] > noone {
			print("Player coords "+string(ar[i].x)+" "+string(ar[i].y));
			ins = instance_create(ar[i].x, ar[i].y, "obj_stage_article", 1);
			print("Kart coords "+string(ins.x)+" "+string(ins.y));
			ins.spawn_variables[@0] = i;
			ins.play = i;
		}
	}
}

with (oPlayer) {

	image_xscale = 0;
	image_yscale = 0;

	vsp = 0;
	hsp = 0;
	visible = false;
	draw_indicator = false;
	if state == PS_SPAWN continue;
	if state != PS_RESPAWN set_state(PS_RESPAWN);
	state_timer = 0;
	can_wall_jump = false;
	can_move = false;
	can_attack = false;
	can_jump = false;
	spr_dir = 0;
	hitpause = true;
	hitstop = 10;
	hitstop_full = 20;
	ai_disabled = true;
//	hurtboxID = other.id;
	mask_index = asset_get("empty_sprite");
}

x = orig_x;
y = orig_y;



xpos = -1;
ypos = -1;
kid = noone;
kart_num = -1;
//print("interact update start "+string(current_time));

#macro orb_dist 16
#macro pow_dist 32
var lop;
var tk = obj_stage_main.total_karts;
for (lop = tk-1; lop >= 0; lop--) {
	kid = kart[lop].id;
	if divvy != noone && kid.num == 1 {
		divvy++;
		divx += kid.x;
		divy += kid.y;
		if kid.play == local_player {
			divvy = noone;
			divx = kid.x;
			divy = kid.y;
		}
	}

}
var List = obj_stage_main.int_ins;
var ra;
var Size = 0;
//print(ds_list_create());
for (lop = tk-1; lop >= 0; lop--) {
	ds_list_clear(List);
	Size = 0;
	ra = array_create(10,false);
	xpos = kart[lop].x;
	ypos = kart[lop].y;
	kid = kart[lop].id;
//	ds_grid_destroy(List);
	Size = instance_position_list(floor(xpos),floor(ypos),asset_get("obj_stage_article"),List,true);
	//Hacky version of instance_position_list.
	/*
	with (obj_stage_article) {
		if position_meeting(xpos,ypos,id) ds_list_add(List,id);
	}
	*/
for (var It = 0; It < Size; It++) with (List[| It]) {				                                                                                                                                                                                           
//	print("With running. "+string(num));
//	for (kart_num = tk-1; kart_num  >= 0; kart_num--) {
//	xpos = kart[kart_num].x;
//	ypos = kart[kart_num].y;
//	kid = kart[kart_num].id;
	if id == kid continue;
	switch(num) {
		case 11: //AI waypoints
			if kid.ai_enabled <= 0 or kid.ai_waypoint != noone break;
			if abs(angle_difference(point_direction(kid.x,kid.y,x,y),image_angle)) <= image_alpha kid.ai_waypoint = id;
		break;
		case 2: case 3: case 9: case 10: lop = -1; break; //Terminate the loop early, no reason to keep looping with these.
		case 1: case 111: //Other karts (bonk)
			/*
			if id == kid continue;
			var ds = 8;
			if !refresh[i] && abs(xpos-coords[i*2]) <= ds && abs(ypos-coords[i*2+1]) <= ds {
				var my_dir = point_direction(0,0,hsp,vsp);
				var their_dir = point_direction(0,0,kid.hsp,kid.vsp);
				if point_distance(x,y,xpos,ypos) <= ds && angle_difference(my_dir,their_dir+180) < 90 {
					sound_play(asset_get("sfx_blow_weak1"));
					hsp = lengthdir_x(spd, 
				}
			}
			*/
		break;

		case 4: //Orbs
			//print("In range "+string(id));
				for (i = spawn_variables[2]; i >= 0; i--) {
	//				print("orb check "+string(i))
					if !refresh[i] && abs(xpos-(coords[i*2])) <= orb_dist && abs(ypos-(coords[i*2+1])) <= orb_dist {
						if point_distance(coords[i*2],coords[i*2+1],xpos,ypos) <= orb_dist {
							refresh[@i] = 100;
							sound_play(asset_get("mfx_xp"), 0, noone, 1, 1+(kid.coins*0.01));
							kid.coins++;
							kid.coins = min(kid.coins, 9);
							break;
						}
					}
				}
		break;
		case 5: //Powerups
			if ra[num] break;
			ra[num] = true;
			if !refresh {
			{
				refresh = 100;
				
				sound_play(asset_get("sfx_ice_shatter"));
				if powerup != 0 {
						sound_play(asset_get("sfx_bubblepop"));
						kid.powerup = powerup;								
				}
				else if !kid.powerup_rolling {
						sound_play(asset_get("sfx_bubblepop"));
					if !kid.powerup {
						//first, determine if someone is ahead of them by already grabbing this powerup
						if kid.battle_hp <= noone { //Race powerups
							i = 0;
							if obj_stage_main.item_leader_time_lap[spawn_variables[3]] < kid.lap {
								//Leader time hasn't been set yet, you're in first
								obj_stage_main.item_leader_time[@spawn_variables[@3]] = kid.total_time;
								obj_stage_main.item_leader_time_lap[@spawn_variables[@3]] = kid.lap;
								print("marking new time")
							} else {
								i = max(kid.total_time-obj_stage_main.item_leader_time[spawn_variables[3]], 0);
								if obj_stage_main.item_leader_time_lap[@spawn_variables[@3]] > kid.lap i += 999;
								print("behind time is "+string(i))
							}
							/*
							1  = Zet fire
							2  = Orc puddle
							3  = Wra 'nado
							4  = Kra rock
							5  = For combust
							6  = Eta ice
							7  = Abs zap
							8  = May tether
							9  = Cla snipe
							10 = Ran bubble
							11 = Ell missile
							12 = Syl woof
							13 = Mol bomb (NOT IN)
							14 = Hod ??? (NOT IN)
							15 = Pom float (NOT IN)
							16 = Oly ??? (NOT IN)
							*/
							ar = [1, 2, 3, 4];
							if i <= 30 {
								ar = [1, 2, 4]; //Leader
							} else if i <= 60 {
								ar = [1, 2, 3, 4, 6]; //Close
							} else if i <= 120 {
								ar = [1, 3, 7, 8, 4, 5, 10, 9, 6]; //Medium
							} else if i <= 180 {
								ar = [1, 5, 7, 8, 12, 10, 9]; //Far
							} else {
								ar = [5, 7, 8, 12, 11, 9]; //Last
							}
							kid.powerup = ar[random_func(0, array_length_1d(ar), 1)];
							kid.powerup_rolling = 40;
							print("behind time: "+string(i)+" powerup: "+string(kid.powerup)+" "+string(ar));
						} else { //Battle powerups
							var pool = [1, 2, 4, 5, 6, 7, 8, 9, 10, 12];
							ar = [12];
							kid.powerup = ar[random_func_2(0, array_length_1d(ar), 1)];
							kid.powerup_rolling = 40;							
						}
					}
				}
				/*
				var lc = obj_stage_main.item_lap[spawn_variables[3]];
				lc = (lc & ~(255 << (other.play-1)*8)) //Inverse bitmask. blanks out the section of that player.
				lc += (other.lap << (other.play-1)*8); //Re-adds that player's lap count.
				
				obj_stage_main.item_lap[spawn_variables[3]] = lc;
				*/
			}} else lop = -1;
		break;
		case 12: //Whitebricks
			if ra[num] break;
			ra[num] = true;
			if play != kid.play && point_distance(x,y,xpos,ypos) <= 24 {

				sound_play(asset_get("mfx_orby_talk_done"));

				switch(kid.powerup) {
					case 0: case 5: case 6: case 7: case 8: break;
					default: kid.powerup += 4; break;
				}
				instance_destroy(id);
			}
		break;
		case 7: //Respawn points
			if ra[num] break;
			ra[num] = true;
			if kid.state != PS_PRATFALL {
				kid.safe_x = x+8;
				kid.safe_y = y-8;
				kid.safe_layer = 0;
				if depth < 0 kid.safe_layer = 1;
					i = 360*(kid.progress < 0);
					var dif = angle_difference(kid.control.image_angle, image_angle);
					if kid.clockwise dif *= -1;
					if dif < 0 kid.safe_prog = (360 + dif) - i;
					else kid.safe_prog = dif - i;
					
					
					
					kid.safe_angle = kid.image_angle;
			}
		break;
		case 8: //rough terrain
			if ra[num] break;
			ra[num] = true;			
			if kid.z <= 0 && !kid.intangible && position_meeting(xpos, ypos, id) &&
			((kid.collision_layer && depth < 0) or (!kid.collision_layer && depth >= 0) or kid.change_layer){
				//var dir = point_direction(0, 0, other.hsp, other.vsp);
				var dis = 0.92;
				kid.hsp *= dis;
				kid.vsp *= dis;
				kid.roughed = true;
			}
		break;
		case 6: //Falloff
			if ra[num] break;
			ra[num] = true;			
			if (((kid.collision_layer == 0 && depth >= 0) or (kid.collision_layer == 1 && depth < 0)) or kid.change_layer) && kid.z <= 0 && !kid.inactionable {
				kid.state = PS_PRATFALL;
				kid.state_timer = 0;
			}		
		break;

		default: 
		kart_id = kid;
		user_event(0); break;
	}
//	}
}
}
//print("interact update end "+string(current_time));

divvy = max(divvy, 1);

divx /= divvy; //average pos of players
divy /= divvy;


	divx = lerp(divx, x, camera_influence/100);
	divy = lerp(divy, y, camera_influence/100);



var dis = 3;
var dir = point_direction(cam_destx, cam_desty, divx, divy)
cam_destx += clamp(lengthdir_x(dis, dir), cam_destx - divx, divx - cam_destx);
cam_desty += clamp(lengthdir_y(dis, dir), cam_desty - divy, divy - cam_desty);

cam_x = lerp(cam_x, divx, 0.1);
cam_y = lerp(cam_y, divy, 0.1);




if amt_finished && amt_finished >= amt_players-1 {
	end_it = true;
}
if end_it && obj_stage_main.end_timer > 0 {
	obj_stage_main.end_timer++;
}

obj_stage_main.image_alpha = floor(min(max(obj_stage_main.end_timer/40, overlay_start/25),1)*500);

overlay_start -= sign(overlay_start);

if end_it && obj_stage_main.end_timer <= 0 {
	print("ending match.");
//	var amt_players = 0;
	for (var i = 1; i <= 4; i++) {
		if is_player_on(i) {
			for (var k = obj_stage_main.total_karts-1; k >= 0; k--) {
				if obj_stage_main.kart_ins[k].play == i {
					if obj_stage_main.lap_count != 0 {
						set_player_stocks(i,1);
						set_player_damage(i,obj_stage_main.kart_ins[k].finished_place);
						print("Tracking finished "+string(i)+" "+string(get_player_damage(i)));
					} else {
						set_player_stocks(i,1);
						set_player_damage(i,obj_stage_main.kart_ins[k].battle_hp);
					}
					break;
				}
			}
		}
	}	
	end_match();
}