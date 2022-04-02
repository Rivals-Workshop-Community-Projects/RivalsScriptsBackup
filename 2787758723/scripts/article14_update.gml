//article14_update, Particles

if _init == 0 {
    spr_name = spawn_variables[0];
    spawn_time = spawn_variables[1];
    vfx_time = spawn_variables[2];
    // anim_speed = spawn_variables[3];
    if (!is_array(spawn_variables[4]))
    	type = spawn_variables[4]; //0-1 = particle, or an object array for an object!
    else
    	spawn_obj = spawn_variables[4];
    //Note, the X and Y values here are relative and in base cast space!
    vel = spawn_variables[5];
    alpha_ = spawn_variables[6];
    active_particles = [];
    debug = true;
    //depth = -10;
    visible = true;
    alive_time = spawn_time;
    _init = 1;
} else {
	if (hitstop <= 0) {
		if ("spawn_obj" in self) {
		    if alive_time % spawn_time == 0 {
		    	switch spawn_obj[3] {
	                case 2:
	                    //obj_type = "obj_stage_article_solid";
	                    art = instance_create(floor(x + spawn_obj[1]),floor(y + spawn_obj[2]),"obj_stage_article_solid",spawn_obj[0]);
	                    break;
	                case 1:
	                    //obj_type = "obj_stage_article_platform";
	                    art = instance_create(floor(x + spawn_obj[1]),floor(y + spawn_obj[2]),"obj_stage_article_platform",spawn_obj[0]);
	                    break;
	                default:
	                    //obj_type = "obj_stage_article";
	                    art = instance_create(floor(x + spawn_obj[1]),floor(y + spawn_obj[2]),"obj_stage_article",spawn_obj[0]);
	                	break;
	            }
	            art.spawn_variables = spawn_obj[5];
	            art.depth = spawn_obj[4];
	            art.og_depth = spawn_obj[4];
	            art.action_article_index = action_article_index;
	            art.room_manager = obj_stage_main.room_manager;
	            art.action_manager =  obj_stage_main.action_manager;
	            art.debug = obj_stage_main.debug;
		    }
		    
		    alive_time++;
		}
		else {
		    if alive_time % spawn_time == 0 && obj_stage_main.fps > 59 {
		        var _p_obj = {
		            x: x,
		            y: y,
		            sprite_index: spr_name,
		            image_index: 0,
		            image_number: sprite_get_number(spr_name),
		            vfx_time: vfx_time,
		            alive_time: 0,
		            type: type,
		            hsp: 0,
		            vsp: 0,
		            alpha: alpha_
		        };
		        switch _p_obj.type {
		            case 1: //Vertical Random Fade
		                _p_obj.hsp = random_func_2(array_length_1d(active_particles) % 200,floor(vel[0]*2),false)-vel[0];
		                _p_obj.vsp = random_func_2(array_length_1d(active_particles)+1 % 200,floor(vel[1] + .3*vel[1]),false)-.15*vel[1];
		                break;
		            default: //Still
		                break;
		        }
		        
		        array_push(active_particles,_p_obj);
		    }
		    for (var _i = 0; _i < array_length_1d(active_particles);_i++) { //All active particles
		        var _ap_i = active_particles[_i];
		        switch _ap_i.type {
		            case 0: //Vertical Random Fade
		                _ap_i.vsp *= .98;
		                _ap_i.hsp *= .98;
		                break;
		            default: //Still
		                break;
		        }
		        _ap_i.y += _ap_i.vsp;
		        _ap_i.x += _ap_i.hsp;
		        _ap_i.image_index = _ap_i.image_number*(_ap_i.alive_time/_ap_i.vfx_time);
		        _ap_i.alive_time++;
		        if _ap_i.alive_time > _ap_i.vfx_time {
		            active_particles = array_cut(active_particles,_i);
		            _i--;
		        }
		    }
		}
	    alive_time++;
	}
}
#define array_cut(_array, _index)
if array_length_1d(_array) == 1 || array_length_1d(_array) == 0 return [];
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;