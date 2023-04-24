//#region Local Variables
if (my_hitboxID.orig_player_id != self) exit;
//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && ("multihit_amount" in self) && multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);
            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
        	in_hitpause = false
            multihit_hit_player = noone;
        }
    }
}
//#endregion

//Points are lost on hits
if (impulse_points > 0)
	impulse_points -= ceil(my_hitboxID.damage * impulse_points_damage_adj);

if (my_hitboxID.attack == AT_DAIR ) {
    if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
    else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
}

if (my_hitboxID.attack == AT_FSTRONG) {
    if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
    else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
}


if (my_hitboxID.attack == AT_DSTRONG) {
    if (my_hitboxID.hbox_num == 4) {
    	dstrong_hit_tipper = true;	
    	var throw_hbox = create_hitbox(AT_DSTRONG, 6, round(x + 140 * spr_dir), round(y - 48));
		for (var i = 0; i <= 5; ++i)
		{
			throw_hbox.can_hit[i] = true;
			throw_hbox.can_hit[hit_player_obj.player] = false;
		}
    }
    else dstrong_hit_tipper = false; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
}

if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1) {
	hit_player_obj.should_make_shockwave = false;
	hit_player_obj.orig_knock = point_distance(x, y - 128, hit_player_obj.x, hit_player_obj.y)/12;
	hit_player_obj.knock_dir = point_direction(x,  y - 128, hit_player_obj.x, hit_player_obj.y);
}

if (my_hitboxID.attack == AT_NSPECIAL) {
    if (my_hitboxID.hbox_num == 1) {
    	my_hitboxID.destroyed = false;
    	my_hitboxID.hitbox_timer = 999;
    	move_cooldown[AT_NSPECIAL] = 25;
    }
    if (my_hitboxID.hbox_num == 3) {
    	my_hitboxID.destroyed = false;
    	my_hitboxID.hitbox_timer = 999;
    	move_cooldown[AT_NSPECIAL] = 30;
    }
    if (my_hitboxID.hbox_num == 5) {
    	my_hitboxID.destroyed = false;
    	my_hitboxID.hitbox_timer = 999;
    	move_cooldown[AT_NSPECIAL] = 35;
    }
}

if ((my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2))
|| (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2)){
if ((hit_player_obj.anthem_status_id == noone || hit_player_obj.anthem_status_id == id)) {
		var times = my_hitboxID.hbox_num == 1 ? 1 : 3;
		if (my_hitboxID.attack == AT_DSPECIAL) times = 3;
		repeat(times) {
			if (array_length(hit_player_obj.anthem_status_stacks) < fspecial_marks_max) {
				var hbox = create_hitbox(AT_FSPECIAL, 3, 0, 0);
				hbox.player = my_hitboxID.player;
				hbox.can_hit[hit_player_obj.player] = false;
				hbox.can_hit[player] = false;
				hit_player_obj.anthem_status_stacks = array_push(hit_player_obj.anthem_status_stacks, hbox);
			}
		}
		hit_player_obj.anthem_status_id = id;
		for (var i = 0; i < array_length(hit_player_obj.anthem_status_stacks); i++) {
			var stack = hit_player_obj.anthem_status_stacks[i];
			if (!instance_exists(stack)) {
	    		other.anthem_status_stacks = array_cut(other.anthem_status_stacks, i);
	    		continue;
			}
			var time_end = (stack.length - 1) - (i * 3);
			if (stack.hitbox_timer >= time_end - 30) continue;
			stack.hitbox_timer = 0;
		}
    }
}

//Gotta recalculate galaxy here
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 4) {
	with (hit_player_obj) {
        var x_pos = x
        var y_pos = y
        var vsp_pos = vsp
        var vtime_pos = 0
        for (var pos = 0; pos < ceil(hitstun); pos++)
        {
            x_pos += hsp
            if (vsp_pos > 0)
                vtime_pos += (vsp_pos - floor(vsp_pos))
            if (vsp_pos < 0)
                vtime_pos += abs((vsp_pos - ceil(vsp_pos)))
            if (vtime_pos >= 1)
                vtime_pos = -1
            var vrep_pos = abs(vsp_pos)
            if (vtime_pos == -1)
            {
                vrep_pos += 1
                vtime_pos = 0
            }
            if (sign(vsp_pos) == sign(vsp))
                y_pos += (floor(vrep_pos) * sign(vsp_pos))
            vsp_pos += hitstun_grav
        }
        
        if (collision_line(x, (y - (char_height * 0.5)), x_pos, y_pos, asset_get("par_block"), false, true))
            should_make_shockwave = false;
        if (should_make_shockwave) {
            hitstop = other.hitstop;
        }
    }
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 2) {
    if (("owner" in my_hitboxID)) {
    	if (my_hitboxID.owner.my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
	    {
	    	if (my_hitboxID.owner.dspecial_countered == hit_player_obj) {
		        my_hitboxID.owner.my_grab_id = my_hitboxID.owner.dspecial_countered;
	    	}
	    }
    }
}

//A custom status that auto actviates the marks.
if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EFFECT) == 30 && impulse_active)
{
	for (var i = 0; i < array_length(hit_player_obj.anthem_status_stacks); i++) {
		var stack = hit_player_obj.anthem_status_stacks[i];
		var time_end = (stack.length - 1) - (i * 3);
		if (stack.hitbox_timer >= time_end - 30) continue;
		stack.hitbox_timer = time_end - 30;
	}
	hit_player_obj.anthem_status_kb = my_hitboxID.kb_value;
	hit_player_obj.anthem_status_kbs = my_hitboxID.kb_scale;
	hit_player_obj.anthem_status_angle = get_hitbox_angle(my_hitboxID);
	if (hit_player_obj.anthem_status_angle == 361) {
		hit_player_obj.anthem_status_angle = free ? 45 : 40;
	}
	if (my_hitboxID.hit_flipper == 10) {
		hit_player_obj.anthem_status_angle = 45;
	}
}


#define set_grab_id()
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;