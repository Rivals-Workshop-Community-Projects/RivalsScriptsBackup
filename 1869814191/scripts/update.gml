//update

/*
with (hit_fx_obj) {
	if player_id != other continue

	if (hit_fx == other.hfx_smallboned or hit_fx == other.hfx_bigboned) {
		depth = other.depth + 1
	}
	if (hit_fx == other.vfx_miss && other.state_cat == SC_HITSTUN) {
		instance_destroy();
		//print_debug("what? did you think i was just going to stand there and take it?");
	}
}
*/
var stateAttack = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);

//var stateMiss = (hurtboxID.dodging == true || invincible);
//var stateMiss = (hurtboxID.dodging == true || invincible || stateAttack && attack == AT_USPECIAL && image_index = 1);

var bone_height = normal_height;
switch(state) {
	case PS_WALK:
		if (state_timer == 0) {
			walkFade = 0;
		} else if (walkFade < 0.5) {
			walkFade += 0.05;
		} else { attack_invince = 2-has_rune("L"); }
	break;
	
	case PS_ROLL_FORWARD:
	case PS_ROLL_BACKWARD:
		if (state_timer >= 3 && state_timer <= 12) {
			with (pHitBox)
			//var whiff = collision_rectangle(other.x-_w, other.y-_h, other.x+_w, other.y, id, true, false)
			if ((player != other.player) && type == 1) {
				var _w = 48;
				var _h = 128;
				if (collision_rectangle(other.x-_w, other.y-_h, other.x+_w, other.y, id, true, false)) {
					if (!other.missActive) {
						with other {
							var miss = spawn_hit_fx(other.x, other.y-30, vfx_miss);
							miss.spr_dir = 1;
							miss.depth -= 20;
						}
						other.missActive = true;
					} else {
						if !("sansMiss" in self) { sansMiss = 1; }
					} //count this hitbox as checked so we dont spawn a dozen vfx later
				}
			}
		} else { missActive = false; }
	break;
	
	case PS_HITSTUN:
	case PS_HITSTUN_LAND:
	case PS_WRAPPED:
	case PS_FROZEN:
		with oPlayer if ("sansGrab_id" in self) && (sansGrab_id == other.id) {
			sansGrab_id = noone;
		}
	break;
	
	case PS_ATTACK_GROUND:
	case PS_ATTACK_AIR:
	    bone_height+=+56*(attack=AT_USTRONG);
	    bone_height+=+28*(attack=AT_UAIR);
	break;
}
char_height+=(bone_height-char_height)/3;
if (!free || state_cat == SC_HITSTUN) {
	fspecStopThat = false;
}
/*
if (object_index == oTestPlayer) && (get_player_color(player) == 16) {
	suppress_stage_music(0, 1);
}
*/

if (fspecCharge >= fspecChargeMax || fspecStored) { //fspec blue bone charge
	outline_color = blue_outline;
}
else {
outline_color = [0, 0, 0];
}
init_shader();

with (asset_get("oPlayer")){
	//var sansgrabtime = 0;
	if (id != other.id && sansKR_player == other.player) {
		var karma_cap = 20;
		if (sansKR > karma_cap) {
			sansKR = karma_cap;
		}
		if (state == PS_RESPAWN || state == PS_DEAD) {
			stopKR();
		}
		if (sansKR > 0) {
			if (sansKRconsume) {
				//take_damage(player, other.player, 1);
				sansKR--;
			} else {
				sansKR_timer++;
				//if (state_cat != SC_HITSTUN) sansKR_timer++;
				//if (state_cat == SC_HITSTUN) { sansKR_timer = 0; }
				if (sansKR_timer >= 60) {
					take_damage(player, other.player, 1);
					sansKR_timer = 0;
					sansKR--;
				}
			}
		} else {
			stopKR();
		}
	}
	
	if (state_cat != SC_HITSTUN) { 
		comboKR = 0;
		if ("sansGrab_id" in self && sansGrab_id == other.id) {
			sansGrab_id.soul_id = noone;
			sansGrab_id = noone;
		}
	}
	/*
	sansgrabtime++;
	
	if (sansgrabtime >= 70 || 
	state_cat == SC_GROUND_NEUTRAL ||
	state_cat == SC_AIR_NEUTRAL) {
		grabbed_id = noone;
	}
	*/
}

with (pHitBox) { //lol, lmao
	if !("sansMiss" in self) { sansMiss = 0; }
	//var _h = (image_yscale*200);
	var sansDodge = (type == other.attack_invince || other.attack_invince == 1);
	//print_debug(_h)
	if (instance_place(x,y, other) && (player != other.player) && sansDodge && !sansMiss) {
		sansMiss = 1;
		with other {
			var miss = spawn_hit_fx(other.x, other.y-30, vfx_miss);
			miss.spr_dir = 1;
			miss.depth -= 20;
			miss.sansHit = player;
		}
	}
}

//FS control code
var someone = false;
with(oPlayer) if "sansFS_soul_host" in self && sansFS_soul_host == other
{
	set_view_position(room_width/2, room_height/2);
	if(other.window >= 5){
		if(up_down) sansFS_soul_y -= sansFS_soul_speed;
		if(down_down) sansFS_soul_y += sansFS_soul_speed;
		if(right_down) sansFS_soul_x += sansFS_soul_speed;
		if(left_down) sansFS_soul_x -= sansFS_soul_speed;
		sansFS_soul_x = clamp(sansFS_soul_x, other.sansFS_box_x - other.sansFS_box_width + sansFS_soul_width, + other.sansFS_box_x + other.sansFS_box_width - sansFS_soul_width);
		sansFS_soul_y = clamp(sansFS_soul_y, other.sansFS_box_y - other.sansFS_box_width + sansFS_soul_width, + other.sansFS_box_y + other.sansFS_box_width - sansFS_soul_width);
	}
	
	if sansFS_hit_lockout sansFS_hit_lockout--;
	
	if((other.state != PS_ATTACK_AIR && other.state != PS_ATTACK_GROUND) || ((other.state == PS_ATTACK_AIR || other.state == PS_ATTACK_GROUND) && other.attack != 49)){
		sansFS_soul_host = noone;
	}
}
if(someone) set_view_position(room_width/2, room_height/2);

with(oPlayer){
    if(self != other && !hitpause){
        sansFS_hsp_store = hsp;
        sansFS_vsp_store = vsp;
    }
}

// FS vfx arays
var newArray = 0;
for (var i = 0; i < array_length_1d(sansFS_blast_array); ++i)
{
    var obj = sansFS_blast_array[i];
    if (++obj.state_timer <= obj.state_lengths[obj.state] && obj.state == array_length(obj.state_lengths) - 1 || obj.state < array_length(obj.state_lengths) - 1) {
    	newArray[array_length_1d(newArray)] = obj;
    	if(obj.state == 3){
    		//hit detection code
    		with(oPlayer) if "sansFS_soul_host" in self && sansFS_soul_host == other && !sansFS_hit_lockout
    		{
    			var hit_detect = point_on_line([obj.x, obj.y], [obj.x + round(lengthdir_x(1000, obj.rot)), obj.y + round(lengthdir_y(1000, obj.rot))], [sansFS_soul_x, sansFS_soul_y]);
    			if(point_distance(sansFS_soul_x, sansFS_soul_y, hit_detect[0], hit_detect[1]) < sansFS_soul_width + 13 * obj.scale) {
    				with(other) var hbox = create_hitbox(49, obj.hitbox, x, y);
    				hbox.damage = obj.damage;
					sansFS_hit_lockout = obj.lockout;
					for(var j = 0; j < 20; j++;) hbox.can_hit[j] = (j == player);
	    		}
    		}
    	}
	    if (obj.state_timer > obj.state_lengths[obj.state])
	    { 
	    	obj.state++;
	    	obj.state_timer = 0;
	    	if(obj.state == 3) sound_play(sound_get("sfx_blaster_fire"));
	    }
    }
}
sansFS_blast_array = newArray;

if sansFS_blast_cooldown sansFS_blast_cooldown--;
if sansFS_blast_combo_cooldown sansFS_blast_combo_cooldown--;
if sansFS_teleport_cooldown sansFS_teleport_cooldown--;

// print(sansFS_blast_array)

//
user_event(0); //compats

init_shader();

#define stopKR()

sansKR = 0;
sansKR_timer = 0;
sansKR_player = noone;
sansKRconsume = false;

#define point_on_line(a, b, p) // Function by Dark, THX! []
var ap = [p[0] - a[0], p[1] - a[1]];
var ab = [b[0] - a[0], b[1] - a[1]];
var dv = dot_product(ap[0], ap[1], ab[0], ab[1]) / dot_product(ab[0], ab[1], ab[0], ab[1]);
var result = [a[0] + dv*ab[0], a[1] + dv*ab[1]];
return result