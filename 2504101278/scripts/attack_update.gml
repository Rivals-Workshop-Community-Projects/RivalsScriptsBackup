//B - Reversals

//USPEC
#macro USPEC_w1LEN 19

if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
 
switch(attack){
	case AT_NSPECIAL_2:
		hsp *= 0.86
		vsp = lerp(vsp,0,0.1);
		
		switch (window)
		{
			case 1:
                if window_timer == 10 {
            sound_play(asset_get("sfx_ori_dspecial_bash_miss"),false,noone,.6) 
            sound_play(sound_get("marx_laugh2"));    
                }
            break;
			case 2:
				if window_timer == 1 and (instance_exists(nspecial_projectile) and nspecial_projectile.state == 0)
				{
					nspecial_projectile.spr_dir = sign(nspecial_projectile.hsp) == 0 ? 1 : sign(nspecial_projectile.hsp)
					nspecial_projectile.state_timer = 0;
					nspecial_projectile.lock_state = true;
					nspecial_projectile.state = -1;
					nspecial_projectile.sprite_index = sprite_get("nspecial_proj_split");
					nspecial_projectile.image_index = 0;
					move_cooldown[AT_NSPECIAL_2] = 30;	
				}
			break;
		}
		
	break;
    case AT_JAB:
        var frame_len = get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH) / get_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES);
        var on_right_frame = (clamp(window_timer,frame_len,frame_len*4) == window_timer)
        if window == 2
        {
            if !attack_down and on_right_frame
            {
                window = 3;
                window_timer = 0;
            }
        
            if has_hit_player and attack_pressed
            {
                //print("DO IT")
                var at = 0;
                var turn = (left_down and spr_dir == 1) or (right_down and spr_dir == -1)
                at = down_down ? AT_DTILT : ((left_down or right_down) ? AT_FTILT : up_down ? AT_UTILT : AT_JAB);
                
                if (at == AT_JAB) break;
                if (turn) spr_dir *= -1
                
                set_attack(at);
            }
        }
        
    break;
   case AT_DATTACK: 
   
		switch window{
			case 1:
			break;
		
			case 2:
				if window_timer == 2
				{
					sound_play(asset_get("sfx_abyss_explosion"));
            		shake_camera(4, 7);
				}
			
			case 3:
				can_fast_fall = false;
				if window_timer == 1
				{
					if !joy_pad_idle and clamp(joy_dir, 40, 150) == joy_dir
			    	{
			    		var base_angle = 10;
			    		var left = (180-(base_angle*2))*(spr_dir == -1);
			    		var angle = base_angle + (left);
			    		
			    		hsp = lengthdir_x(12,angle);
			    		vsp = lengthdir_y(12,angle);
			    		//spr_angle = point_direction(0,0,hsp,vsp);
			    		spr_angle = 10*spr_dir;
			    	}
			    	else
			    	{
			    		print(joy_dir)
			    		hsp = (12*spr_dir)
			    	}
				}
			default:
			{
				can_fast_fall = false;
				spr_angle = round(lerp(spr_angle,0,0.2));
			}
			break;
		}
    
    break;
    case AT_FSTRONG:
    if clamp(window, 2, 5) == window
    {
        if window == 5 and window_timer > 5 break;
        hud_offset = floor(lerp(hud_offset, 160, .1));
    }
    
    if window == 4 && window_timer == 10 {
            sound_play(asset_get("sfx_abyss_explosion"));
            shake_camera(4, 7);
    }
    
    break;
    case AT_USTRONG:
        
        if (window < 3) vsp = 0;
        if (window > 2) hsp = 0;
        can_move = false;
        
        set_attack_value(attack, AG_OFF_LEDGE, window > 1);
        
        switch(window){
            case 1:
                hsp *= 0.8;
                break;
            case 2:
                if (window_timer == 1) sound_play(asset_get("sfx_holy_lightning"));
                
                if (window_timer == 4){
                    spark_x = x;
                    spark_y = y;
                    spark_y -= 12; // did this so the vfx doesn't clip thru ground. you could also just change the spark offset
                    shake_camera(4, 8);
                    vsp = -lerp(20, 28, strong_charge / 60);
                    y -= 24; // did this so the trail IN the sprite doesn't clip thru ground.
                }
                break;
            case 3:
                if !hitpause vsp = -lerp(12, 20, strong_charge / 60);
                break;
            case 4:
            case 5:
                vsp = clamp(vsp, -3, 0);
                break;
        }
        
        break;
  case AT_DSTRONG: 
        if window == 4 && window_timer == 7 {
            sound_play(asset_get("sfx_abyss_explosion"));
            shake_camera(6, 8);
        }
    break;
    case AT_DAIR: 
        if window == 3 && window_timer == 2 {
            sound_play(sound_get("magolor_tele_out"));
        }
    break;
    case AT_NSPECIAL:
         
        if window == 2 and window_timer == 1
        {
            sound_play(sound_get("marx_laugh"));
            move_cooldown[attack] = 230;
            
            var posx, posy;
            posx = x + (40*spr_dir);
            posy = y - 40;
            
            hitbox = create_hitbox(AT_NSPECIAL,1,posx,posy);
        }
    
    break;
    case AT_USPECIAL:
    	switch (window)
    	{
    		case 1:
    		var ex = instance_exists(nspecial_projectile) and nspecial_projectile.state < 2
    		if ex uspecial_backupcoords = [nspecial_projectile.x,nspecial_projectile.y+40];
    			switch (window_timer)
    			{
    				case 1:
    					if get_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE) != 7 set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
    					vsp = -5
    				break;
    				case USPEC_w1LEN:
    				{
    					var xx, yy, diff, exist, right_state, threshold, close_enough;
    					xx = 0;
    					yy = 0;
    					diff = 0;
    					exist = instance_exists(nspecial_projectile);
    					right_state = exist and nspecial_projectile.state < 2
    					threshold = 70;
    					close_enough = false;
    					if right_state
    					{
	    					xx = clamp(nspecial_projectile.x, bbox_left, bbox_right);
				            yy = clamp(nspecial_projectile.y, bbox_top, bbox_bottom);
				            diff = sqrt(sqr(xx-nspecial_projectile.x) + sqr(yy-nspecial_projectile.y) );
				            
				            close_enough = diff <= threshold;
    					}
    					//print("diff is "+ string(diff))
    					//print(close_enough)
    					
    					if (!exist or (right_state and close_enough) or shield_down)
    					{
    						window = 5;
    						window_timer = 0;
    						if !exist or shield_down break;
    						
	    					nspecial_projectile.hsp = 0;
	    					nspecial_projectile.vsp = 0;
	    					nspecial_projectile.state = 2;
	    					nspecial_projectile.state_timer = 0;
	    					nspecial_projectile.lock_state = true;
	    					vsp = -10
	    					set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
	    					var i = 1;
	    					repeat (2+random_func(11,3,true))
			                {
			                	spawnParticle(sprite_get("light_particle_green"), 0.2, [nspecial_projectile.x, nspecial_projectile.y], [round(random_func(3+i,6,false)-random_func(5+i, 12, false)), round(random_func(6+i,6,false)-random_func(7+i, 12, false))], 0.9)
			                	i++;
			                }
    					}
    					
    				}
    			}
    			break;
    		case 2:
    		var ex = instance_exists(nspecial_projectile) and nspecial_projectile.state < 2
    		if ex uspecial_backupcoords = [nspecial_projectile.x,nspecial_projectile.y+40];
    			if window_timer == get_window_value(AT_USPECIAL,2,AG_WINDOW_LENGTH)-1
    			{
    				var coords = uspecial_backupcoords;
    				if ex coords = [nspecial_projectile.x,nspecial_projectile.y+40]
	    			x = nspecial_projectile.x;
	    			y = nspecial_projectile.y+40;
	    			instance_destroy(nspecial_projectile.hitbox)
	    			instance_destroy(nspecial_projectile);
	    			nspecial_projectile = noone;
    			}
    			break;
    		case 3:
    			if window_timer == 3{
    				sound_play(sound_get("magolor_tele_out"));
    			}
    			if window_timer == 3{
    				sound_play(sound_get("gleam"));
    			}
    		case 4:
    			hsp = 0;
    			vsp = 0;
    		break;
    	}
    	
    break;
    case AT_DSPECIAL:
    
    	switch window
    	{
    		case 2:
    			switch window_timer
    			{
    				case 10:
    					sound_play(asset_get("sfx_absa_cloud_crackle"));
    				break;
    				case 20:
    					sound_play(asset_get("sfx_boss_final_cannon"));
    				break;
    			}
    		
    		case 3:
	    		var hdir, vdir;
		    	hdir = (left_down ? -1 : right_down)
		    	vdir = (up_down ? -1 : down_down)
		    
		    	hsp = lerp(hsp, 6*hdir, .02); 
		    	vsp = lerp(vsp, 6*vdir, .02); 
		    	hsp = clamp(hsp + (3*hdir/8), -6, 6);
		    	vsp = clamp(vsp + (3*vdir/8), -6, 6);
		    break;
    		case 4:
	    		hsp *= 0.95;
	    		vsp *= 0.95;
    		break;
    	}
    break;
    case AT_FSPECIAL:
        can_move = false;
        switch window{
            case 1:
                if window_timer == 1 and fspecial_stored[0] == -1 
                {
                	sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
                    fspecial_sound = sound_play(asset_get("sfx_ori_charged_flame_charge"));
                }
            break;
            case 2:
            switch (window_timer)
            {
                case 1:
                
                if fspecial_stored[0] != -1 
                {
                    sound_play(asset_get("mfx_star"));
                    window = fspecial_stored[0];
                    window_timer = fspecial_stored[1];
                }
                break;
                
                case 26:
                sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"))
                break;
            }
            
            case 3:
            	if fspecial_stored[0] == 2 and window_timer == 1
            	{
            		sound_play(asset_get("sfx_frog_fspecial_charge_full"))
            	}
                fspecial_stored = [window, window_timer];
                
                var fire, store;
                fire = !special_down;
                store = shield_pressed;
                
                if fire or store
                {
                    window = fire ? 4 : 7;
                    window_timer = 0;
                    sound_stop(fspecial_sound);
                    fspecial_sound = noone;
                }
            vsp = lerp(vsp, 0, .05)
            break;
            case 6:
                fspecial_stored = [-1, -1];
                //print("-----")
            break;
            case 7:
            if window_timer == 1
            {
                var i=0;
                repeat (2+random_func(10,4,true))
                {
                	spawnParticle(sprite_get("light_particle_green"), 0.2, [x +(spr_dir*60), y-30], [round(random_func(4+i,8,false)-random_func(5+i, 16, false)), round(random_func(6+i,8,false)-random_func(7+i, 16, false))], 0.8)
                	i++;
                }
            }
            break;
        }
    
    break;
    case AT_TAUNT:
        if clamp(window, 2, 10) == window
        {
            if window == 10 and window_timer > 2 break;
            hud_offset = floor(lerp(hud_offset, 160, .1));
        }
        
        if window == 8
        {
            if window_timer == 1
            {
                shake_camera(18, 3)
		        var str, add;
		        str = "scream_";
		        add = "";
		        switch get_player_color(player)
		        {
		        	case 3:
		        		add = "magalor";
		        	break;
		        	case 5:
		        	case 27:
		        		add = "drawcia";
		        	break;
		        	case 8:
		        	case 16:
		        		add = "kirb";
		        	break;
		        	case 23:
		        		add = "tamat";
		        	break;
		        	default:
		        		add = "void";
		        	break;
		        }
		        sound_play(sound_get(str+add));
            	
            }
            else if (window_timer == 3) shake_camera(1, 48)
        }
    	break;   
}
//SANDBERT CODE
// if (attack == AT_NSPECIAL){
//     if (window == 3){
//         if (special_pressed){
//             window = 1;
//             window_timer = 0;
//         }
//     }
// }

// if (attack == AT_FSPECIAL){
//     if (window == 2){
//         if (special_pressed){
//             window = 3;
//             window_timer = 0;
//             destroy_hitboxes();
//         }
//     }
//     can_fast_fall = false;
// }

// if (attack == AT_USPECIAL){
//     if (window == 1 && window_timer == 1){
//         times_through = 0;
//     }
//     if (window == 2){
//         if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
//             if (times_through < 10){
//                 times_through++;
//                 window_timer = 0;
//             }
//         }
//         if (!joy_pad_idle){
//             hsp += lengthdir_x(1, joy_dir);
//             vsp += lengthdir_y(1, joy_dir);
//         } else {
//             hsp *= .6;
//             vsp *= .6;
//         }
//         var fly_dir = point_direction(0,0,hsp,vsp);
//         var fly_dist = point_distance(0,0,hsp,vsp);
//         var max_speed = 12;
//         if (fly_dist > max_speed){
//             hsp = lengthdir_x(max_speed, fly_dir);
//             vsp = lengthdir_y(max_speed, fly_dir);
//         }
//         if (special_pressed && times_through > 0){
//             window = 4;
//             window_timer = 0;
//         }
//         if (shield_pressed){
//             window = 3;
//             window_timer = 0;
//         }
//     }
//     if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
//         window++;
//         window_timer = 0;
//     }
// }

// if (attack == AT_DSPECIAL){
//     if (window == 2 && !was_parried){
//         can_jump = true;
//     }
//     can_fast_fall = false;
//     can_move = false
// }

#define spawnParticle
/// @param {undefined} spr
/// @param {undefined} animspeed
/// @param {undefined} pos
/// @param {undefined} velocity
/// @param {undefined} fric
/// spawnParticle(spr, animspeed, pos, velocity, fric)

var spr = argument0, animspeed = argument1, pos = argument2, velocity = argument3, fric = argument4;

var newParticle = {
	sprite: spr,
	frame: 0,
	aspeed: animspeed,
	position: pos,
	scale: [1,1],
	color: c_white,
	vel: velocity,
	frict: fric
};
	
ds_list_add(particles,newParticle);

