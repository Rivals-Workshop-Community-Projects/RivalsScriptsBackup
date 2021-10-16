//If you're going to use this script in an article, you need the following variables: spd, found_wall, collision_layer, change_layer

var hvec, vvec;
var old_angle = image_angle;
image_angle = 0;
//Collision
var col_obj = obj_stage_article_solid;

depth = 1;
if collision_layer == 1 {
	col_obj = obj_stage_article_platform;
	depth = 0;
}
found_wall = false;
change_layer = true;
if position_meeting(x,y,asset_get("solid_32_obj")) collision_layer = false;// print("GROUNDING")}
else if position_meeting(x,y,asset_get("jumpthrough_32_obj")) collision_layer = true; //print("BRIDGING")}
else change_layer = false;
if !place_meeting(x,y,col_obj) {image_angle = old_angle; exit}
{
	var dir = point_direction(0,0,hsp,vsp);
	hvec = dcos(dir);
	vvec = -dsin(dir);
	spd = point_distance(0,0,hsp,vsp)

	//Find normal
	
	var dist = (sprite_get_width(mask_index)/2)+3;
	var points = array_create(2, -1);

	var found = 0
	var failsafe = array_create(2, dir);
	var found_pos = false;
	var found_neg = false;
	var new_x = 0;
	var old_x = -99999;
	var new_y = 0;
	var old_y = -99999;
	var checks_p = 0;
	var checks_n = 0;
	for (var i = 0; i < 180; i += 3) {
		new_x = floor(x+dcos(dir+i)*dist);
		if !(found & 4) {found_pos = position_meeting(x+dcos(dir+i)*dist, y-dsin(dir+i)*dist, col_obj); checks_p++}
		if !(found & 8) {found_neg = position_meeting(x+dcos(dir-i)*dist, y-dsin(dir-i)*dist, col_obj); checks_n++}
		
		old_x = new_x;
		old_y = new_y;
		if !(found & 1) && found_pos {
			found += 1;
			failsafe[1] = dir+i;
			//print_debug("Entered CC wall")
		}
		if !(found & 2) && found_neg {
			found += 2;
			failsafe[0] = dir-i;
			//print_debug("Entered C wall")
		}
		if (found & 1) && !(found & 4) && !found_pos {
			found += 4;
			points[0] = dir+i;
			//print_debug("Exited CC wall"+string(i))
		}	
		if (found & 2) && !(found & 8) && !found_neg {
			found += 8;
			points[1] = dir-i;
			//print_debug("Exited C wall "+string(i))
		}		
		if !(found & 4) points[0] = dir+i;
		if !(found & 8) points[1] = dir-i;
		if found >= 12 break;
	}
	var dont_flip = false;
	if !(found & 1)  { //Missing the wall
			dont_flip = true;
			points[0] = failsafe[0];
	}
	if !(found & 2) { //Missing the wall
			dont_flip = true;
			points[1] = failsafe[1];
	}	


//	points[0] = check_angles(image_angle+0, image_angle+180, 180, noone, 8, x, y, dist, col_obj, 0);
//	points[1] = check_angles(image_angle+0, image_angle+180, -180, noone, 8, x, y, dist, col_obj, 0);
	
	
//	var h = spawn_hit_fx(x,y,obj_stage_main.hfx[6]);
//	h.draw_angle = points[0];
//	var h = spawn_hit_fx(x,y,obj_stage_main.hfx[6]);
//	h.draw_angle = points[1];
	
//	print_debug("Relative angles are "+string(points[0])+" "+string(points[1])+" after "+string(checks_p)+" "+string(checks_n));
	
	var angdif = angle_difference(points[0],points[1]);
	points[0] -= ((angdif)/2); //NORMAL
	
	if !dont_flip && abs(angle_difference(points[0], dir)) > 90 points[0] = dir - angle_difference(dir+180, points[0]);
	
//	print_debug("Normal ends up being "+string(points[0]));
	
	
	points[1] = (dir-2*(angle_difference(dir, points[0])))+180;
	
	found_wall = true;
	

	
	hsp = dcos(points[1])*spd;
	vsp = -dsin(points[1])*spd;
	dir = point_direction(0,0,hsp,vsp);
	spd = point_distance(0,0,hsp,vsp);

	

	//Move out 

	hvec = dcos(points[0]);
	vvec = -dsin(points[0]);
	var reps = 0;
	do {
		x -= hvec;
		y -= vvec;
		reps++;
	} until (!place_meeting(x,y,col_obj));
	if reps > 15 print("ABOVE COLLISION IS SUS")
}

//print("HEYYYYYYYYY"+string(change_layer))
image_angle = old_angle;
#define check_angles(ang_old,ang_new,_diff,last_result,steps_left,_x,_y,_dist,object,recursions)
//print("Checking angles "+string(checks)+" "+string(recursions));
checks++;
if steps_left <= 0 {
	if recursions <= 0 
	return ang_old;
	else
	return -1;
}
--steps_left;

var new_result = position_meeting(_x+dcos(ang_new)*_dist,_y-dsin(ang_new)*_dist,object);
if last_result == noone {last_result = position_meeting(_x+dcos(ang_old)*_dist,_y-dsin(ang_old)*_dist,object);
	
}
if _diff == 0 _diff = angle_difference(ang_old,ang_new);

if new_result != last_result {
	//There's a wall between these two angles. Narrow down where it is and try again.
	ang_old = ang_new;
	_diff /= 2;
	ang_new -= _diff;
	
	recursions = 0; //Turn off recursion. This is the real branch now.
}
else { //These are the same. Narrow it down anyway and try to find a difference anywhere.
	++recursions;
	if !(recursions & 1) ang_new += _diff*2;
	var right = check_angles(ang_new, ang_new-(_diff/2), _diff/2, new_result, steps_left-1, _x, _y, _dist, object, recursions);
	if right != -1 return right; //Bring this version of reality to light. This one has priority since it's on the same side.
	var left = check_angles(ang_new, ang_new+(_diff/2), _diff/2, new_result, steps_left-1, _x, _y, _dist, object, recursions);
	if left != -1 return left; 
}

return check_angles(ang_old, ang_new, _diff, new_result, steps_left,_x, _y, _dist, object, recursions);
/*
#define check_angles(ang_old, ang_new, last_result, steps_left, _x, _y, _dist, object, recursions, type) //RECURSION WOOOOOOOOOOOOOO
if steps_left <= 0 { //DONE, stop, stop here. 
	//print("Angle check done. "+string(recursions)+" "+string(steps_left));
	if recursions == 0 {
	print("Angle check done. "+string(ang_old + angle_difference(ang_old,ang_new)/2)+" "+string(type));
	return ang_old + angle_difference(ang_old,ang_new)/2;
	}
	else return -1;
}
if last_result == noone last_result = position_meeting(_x+dcos(ang_old)*_dist,_y-dsin(ang_old)*_dist,object);
var new_result = position_meeting(_x+dcos(ang_new)*_dist,_y-dsin(ang_new)*_dist,object);
var _diff = angle_difference(ang_old,ang_new);
if ang_old < 0 {_diff *= -1; print("Flipped.")}
	var h = spawn_hit_fx(x,y,obj_stage_main.hfx[6]);
	h.draw_angle = ang_new;
if new_result != last_result { //The wall's edge is somewhere in here.
	var oa = ang_old;
	var na = ang_new;
	ang_old = ang_new;
	ang_new -= _diff/2;
	print("Edge found between "+string(oa)+" "+string(na)+" new angles are "+string(ang_old)+" "+string(ang_new)+"   |   "+string(steps_left)+" "+string(recursions)+" "+string(type));
	recursions = 0;
	
} else {
	++recursions;
	if !((recursions) & 1) ang_new += _diff*2; //Swap it to the other side of the old angle before digging deeper.
	else {
		var _branched_l = check_angles(ang_new, ang_new - (_diff/2), new_result, steps_left-1, _x, _y, _dist, object, recursions, type+"L");
		if _branched_l != -1 return _branched_l;
		var _branched_r = check_angles(ang_new, ang_new + (_diff/2), new_result, steps_left-1, _x, _y, _dist, object, recursions, type+"R");
		if _branched_r != -1 return _branched_r;
		//If it gets past this, did not find an angle at all with the given step resolution! Move on to the next one.
	}
}
//TIME TO RECURSE
--steps_left;
return check_angles(ang_old, ang_new, new_result, steps_left, _x, _y, _dist, object, recursions, type+"-"); 