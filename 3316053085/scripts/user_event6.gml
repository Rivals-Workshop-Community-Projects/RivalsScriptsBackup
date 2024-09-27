//break the targets

if (get_btt_data) //Get data for Break The Targets
{
	course_name = "Shamaeem";
	//Set the spawn properties
	respawn_point = [ [14, 34], [0, 0], 1 ]; //[ [tile_x, tile_y], [cell_x, cell_y], room_id ]
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );  
	room_add(1, [
	    [ [0,0], //main chunk
	        [
                //Solid Ground
		    	[1, 0, 0, 2, 999, [sprite_get("btt_solid"), 0, false, 0, 0, 0, 0, 0], [0]],
                [1, -2, 0, 0, 29, [sprite_get("btt_ground"), 20, false, 0, 0, 0, 0, 0], [0]],

                //bacgkround stuff
                [1, -128, 66.5, 0, 10, [sprite_get("btt_fg_clouds"), 0, false, 0, 0, 0, 0, 0], [0]],
                [1, 0, 0, 0, 30, [sprite_get("btt_bg_skybox"), 15, true, 1, 0, 0, 0, 0], [0]],

	        	//Targets
		        [10, 3.5, 30, 0, -3, [1, 0, 0, 0, 0, 0, 0, 0], [0]],
                [10, 30, 12, 0, -3, [2, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 46, 10, 0, -3, [3, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 84, 4, 0, -3, [4, 0, 5, [[84, 4], [100, 4]], 0, 0, 0, 0], [0]],
                [10, 64, 22, 0, -3, [5, 0, 6, [[64, 22], [72, 22], [72, 36], [64, 36]], 0, 0, 0, 0], [0]],
                [10, 72, 36, 0, -3, [6, 0, 6, [[72, 36], [64, 36], [64, 22], [72, 22]], 0, 0, 0, 0], [0]],
                [10, 58, 54, 0, -3, [7, 0, 0, 0, 0, 0, 0, 0], [0]],
                [10, 36, 34, 0, -3, [8, 0, 0, 0, 0, 0, 0, 0], [0]],
	        ]
	    ],
	    //Blastzones (the first 2 values in a 2D array are the "cell" coordinates, literally just minecraft chunks)
        //NOTE: for some reason the blastzones will appear in the middle of the course but not kill you
	    [ [-1,1], [ [ 4, 0, 0, 0, -999, [4, 0, 0, 0, 0, 9999, 20, false], [0,0] ] ] ], //bottom blastzone
        //[ [-1,-1], [ [ 4, 127, 0, 0, -999, [4, 0, 0, 0, 0, 20, 9999, false], [0,0] ] ] ], //left blastzone
        //[ [0,-1], [ [ 4, 127, 0, 0, -999, [4, 0, 0, 0, 0, 20, 9999, false], [0,0] ] ] ], //right blastzone
        //[ [-1,-1], [ [ 4, 0, 0, 0, -999, [4, 0, 0, 0, 0, 9999, 20, false], [0,0] ] ] ], //top blastzone blastzone
	]);
}
with (obj_stage_article) if (num == 3) max_time = 1200;

//how things work
/*
    [article_num, x, y, article_type, depth, [article_specific_args], [spawn_flag]]
        article_num: 1 = terrain | 2 = empty | 3 = scene manager | 4 = triggerzone | 5 = room manager | 7 = camera control | 8 = room transition | 9 = checkpoint | 10 = target
        x: x coordinate, ratio is 1:8 for every tile (meaning typing 2 would place it in 16)
        y: y coordinage, ratio is 1:8 same as x
        article_type: 0 = no collision | 1 = platform collision | 2 = solid collision
        depth: render order, negative numbers are more in front

    terrain arguments - [sprite_index, animation_speed, static, 0, 0, 0, 0, 0]
        sprite_index: sprite to use
        animation_speed: how fast it plays the animation of the sprite
        static: if true, it will act as a background image and not move
    
    triggerzone arguments - [event_id, active_scene, trigger_obj_type, trigger_player, trigger_shape, trigger_w, trigger_h, trigger_negative]
        event_id: keep as 4, it calls a user event from the stage
        active_scene: if 0 it will trigger in any scene, if not it will trigger in the specified scene
        trigger_obj_type: if 0 it means it activates from players entering it
        trigger_player: if 0 it means any player can trigger it, otherwise it will check the player slot
        trigger_shape: 0 = rectangle | 1 = circle | 2 = the sprite index
        trigger_w: trigger zone width
        trigger_h: trigger zone height
        trigger_negative: if not 0 it will invert the trigger zone (experimental, might not do anything)

    target arguments - [targ_id, event_id, move_vel, path, 0, 0, 0, 0]
        targ_id: target ID, useful for debugging positions
        event_id: keep as 0, it calls a user event from the stage
        move_vel: if the target has a path this is how fast it moves
        path: an array of points the target goes to, written like: [ [x1, y1], [x2, y2], ...]
*/
//https://github.com/RoA-Adventure-Mode-Team/BreakTheTargets/blob/master/README.md <---- the guide







#define room_add(_room_id,room_data) //Adds a new room to the scene
{
    with (obj_stage_article) if (num == 5)
    {
        var _room_id_ind = array_find_index(array_room_ID,_room_id);
        if (_room_id_ind == - 1)
        {
            if (debug) print_debug("[RM] Adding... "+string(_room_id));
            array_push(array_room_data,room_data);
            array_push(array_room_ID,_room_id);
        }
        else
        {
            array_room_data[_room_id_ind] = room_data;
            array_room_ID[_room_id_ind] = _room_id;
        }
    }
}