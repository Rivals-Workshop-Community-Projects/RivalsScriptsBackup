// beacon

//visible = false;

//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}




//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

if state != 0 && state != 2 {
	var spr;
    with (player_id) spr = sprite_get("line_part");
    if (state_timer%8 == 0) createParticle(1,0,10,50,spr,x+26,y-46,1.5,0,-0.05,0,1.3,-0.05,50,true);
    if (state_timer%8 == 0) createParticle(1,1,10,50,spr,x-26,y-46,-1.5,0,0.05,0,1.3,-0.05,50,true);
}


//State 0: Freshly spawned

if (state == 0){
	
	if state_timer == 0 {
		sound_play(asset_get("sfx_shovel_hit_light1"),false,-4,0.6,1.04);
	} else if state_timer == 16 {
		sound_play(asset_get("sfx_shovel_hit_light2"),false,-4,0.2,1.06);
	} else if state_timer == 26 {
		sound_play(asset_get("sfx_clairen_dspecial_counter_active"),false,-4,0.6,1.04);
	}
	
	if (y > room_height || x > room_width || x < 0) {
        state = 2;
        state_timer = 0;
    }
    
	if (state_timer == 2 && free) {
		state_timer--;
        vsp += grav_accel;
	} else {
		vsp = 0;
	}
	if (state_timer >= 42) {
    	state = 1;
    	state_timer = 0;
	}
}



//State 1: Idle

if (state == 1){
    //Die if should die
    if (shoulddie) {
        state = 2;
        state_timer = 0;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
    if (free) {
        vsp += grav_accel;
    } else {
        vsp = 0;
    }
    
    if (charges <= 0 || y > room_height || x > room_width || x < 0) {
        state = 2;
        state_timer = 0;
    }
    
    if (point_distance(x+center[0],y+center[1],player_id.x,player_id.y-30) <= radius) {
        player_id.in_field = true;
    } else {
        player_id.in_field = false;
    }
    with (obj_article1) {
        if (player_id == other.player_id) {
            if (point_distance(other.x+other.center[0],other.y+other.center[1],x,y-30) <= other.radius && !passed_field) {
                passed_field = true;
                other.charges--;
            }
        }
    }
    
    var col_hitbox = instance_nearest(x,y,pHitBox);
    if (col_hitbox != noone && 
    col_hitbox.player_id == player_id && 
    point_distance(x+center[0],y+center[1],col_hitbox.x,col_hitbox.y) <= 40) {
        if (col_hitbox.attack == AT_NSPECIAL) {
            col_hitbox.destroyed = 1;
            instance_destroy(col_hitbox);
            state = 3;
            state_timer = 0;
        } else if (col_hitbox.attack == AT_FSPECIAL && col_hitbox.changed == 0) {
            tag = col_hitbox;
            tag.changed = 1;
            tag.length = 200;
            tag.hitbox_timer = 0;
            state = 5;
            state_timer = 0;
            tag.hsp = 0;
            tag.vsp = 0;
            tag.grav = 0;
        }
    }
}



//State 2: Dying

if (state == 2){
	if state_timer == 0 {
		sound_play(asset_get("sfx_absa_jab1"),false,-4,0.8,1);
		sound_play(asset_get("sfx_absa_cloud_crackle"),false,-4,0.9,1.3);
		sound_play(asset_get("sfx_ell_steam_release"),false,-4,0.3,1.1);
		sound_play(asset_get("sfx_ell_eject"),false,-4,0.7,1);
	}
    if (state_timer == die_time){
        player_id.killarticles = false;
        player_id.in_field = false; //sanity check
        player_id.beacon = noone;
        player_id.move_cooldown[AT_DSPECIAL] = player_id.beacon_cd;
        //var fx = spawn_hit_fx(x,y-20,player_id.explo);
        //fx.depth-=50;
        //sound_play(sound_get("explosion_sound"));
        instance_destroy();
        exit;
    }
}



//State 3: shoost charge

if (state == 3){
    if state_timer == 0 {
    	sound_play(asset_get("sfx_boss_shine"));
    	sound_play(asset_get("sfx_boss_shine"));
    	cur_sound = sound_play(asset_get("sfx_boss_final_charge"),false,-4,0.9,1.1);
    	//sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,1);
    }
    if state_timer % 12 == 0 && state_timer <= 80 sound_play(asset_get("sfx_boss_shine"),false,noone,0.9,1+(state_timer/60));
    if (target == noone || !instance_exists(target)) {
        var currenttarget = noone;
        var shortest_dist = 9999;
        var highest_tags = 0;
        var t_player = noone;
        var d_player = noone;
        with (oPlayer) {
            if (get_player_team(player) != get_player_team(other.player_id.player) && state != PS_DEAD && state != PS_RESPAWN)  {
                //can be targeted, start checking
                if (point_distance(x,y-36,other.x-20,other.y-36) < shortest_dist) {
                    shortest_dist = point_distance(x,y-36,other.x-20,other.y-36);
                    d_player = id;
                }
                if (roke_mark_id == other.player_id) {
                    if (roke_mark > highest_tags) {
                        highest_tags = roke_mark;
                        t_player = id;
                        currenttarget = t_player;
                    } else if (roke_mark == highest_tags) {
                        currenttarget = d_player;
                    }
                } else if (t_player == noone) {
                    currenttarget = d_player;
                }
            }
        }
        target = currenttarget;
    }
    var dir_to_target = target != noone ? point_direction(x,y-36,target.x,target.y-30): 180*(spr_dir==-1);
    var angle_diff = angle_difference(direc,dir_to_target);
    direc = direc == -361 ? ( target != noone ? point_direction(x,y-36,target.x,target.y-30) : 180*(spr_dir==-1)) : direc-clamp(angle_diff,-max_target_speed*(angle_diff/25),max_target_speed*(angle_diff/25)*(target != noone && target.state_cat == SC_HITSTUN ? 3 : 1));
    //if direc > 190 && direc < 350
        //plat = collision_line_point(x+lengthdir_x(60,direc),y-10+lengthdir_y(60,direc),x+lengthdir_x(800,direc),y-10+lengthdir_y(800,direc),asset_get("par_jumpthrough"),true,true);
        block = collision_line_point(x,y-36,x+lengthdir_x(shoost_range,direc),y-36+lengthdir_y(shoost_range,direc),asset_get("par_block"),true,true);
        with (player_id.hurtboxID) {
            other.plr = collision_line_point(other.x,other.y-36,other.x+lengthdir_x(other.shoost_range,other.direc),other.y-36+lengthdir_y(other.shoost_range,other.direc),pHurtBox,true,true);
        }
        
        if (!collided) {
            if (plr[0] != noone) //&& 
            //(!is_array(plat) || plat[0] == noone || point_distance(x,y,plat[1],plat[2]) <= 60 || point_distance(x,y-10,plr[1],plr[2]) <= point_distance(x,y-10,plat[1],plat[2]))  
            {
                //create_hitbox(AT_NSPECIAL, 1, floor(plr[1]), floor(plr[2]));
                //spawn_hit_fx(floor(plr[1]), floor(plr[2]), 301);
                finalCol = plr;
                //collided = true;
            }
        }
        
        if (is_array(block)) {
            if (is_array(block) && 
            //(!is_array(plat) || plat[0] == noone || point_distance(x,y,plat[1],plat[2]) <= 60 || point_distance(x,y-10,block[1],block[2]) <= point_distance(x,y-10,plat[1],plat[2])) && 
            (!is_array(plr) || plr[0] == noone || point_distance(x,y-36,block[1],block[2]) <= point_distance(x,y-36,plr[1],plr[2]))) {
                //with player_id{create_hitbox(AT_NSPECIAL, 1, floor(other.block[1]), floor(other.block[2]));}
                //spawn_hit_fx(floor(block[1]), floor(block[2]), 301);
                finalCol = block;
                //collided = true;
            }
        }
        
        
    if state_timer == 80 {
    	sound_stop(cur_sound);
    	sound_play(asset_get("sfx_zetter_shine_charged"));
    }
    
	if (state_timer >= 90) {
	    state = 4;
	    state_timer = 0;
	}
}



//State 4: shoost

if (state == 4){
	if state_timer == 0 {
		sound_play(asset_get("sfx_sand_screech"));
	}
    if (state_timer < 4) {
        //if direc > 190 && direc < 350
        //plat = collision_line_point(x+lengthdir_x(60,direc),y-10+lengthdir_y(60,direc),x+lengthdir_x(shoost_range,direc),y-10+lengthdir_y(shoost_range,direc),asset_get("par_jumpthrough"),true,true);
        block = collision_line_point(x,y-36,x+lengthdir_x(shoost_range,direc),y-36+lengthdir_y(shoost_range,direc),asset_get("par_block"),true,true);
        with (player_id.hurtboxID) {
            other.plr = collision_line_point(other.x,other.y-36,other.x+lengthdir_x(other.shoost_range,other.direc),other.y-36+lengthdir_y(other.shoost_range,other.direc),pHurtBox,true,true);
        }

        if (!collided) {
            if (plr[0] != noone) //&& 
            //(!is_array(plat) || plat[0] == noone || point_distance(x,y,plat[1],plat[2]) <= 60 || point_distance(x,y-10,plr[1],plr[2]) <= point_distance(x,y-10,plat[1],plat[2]))  
            {
                //create_hitbox(AT_NSPECIAL, 1, floor(plr[1]), floor(plr[2]));
                //spawn_hit_fx(floor(plr[1]), floor(plr[2]), 301);
                finalCol = plr;
                //collided = true;
            }
        }
        
        if (is_array(block)) {
            if (is_array(block) && 
            //(!is_array(plat) || plat[0] == noone || point_distance(x,y,plat[1],plat[2]) <= 60 || point_distance(x,y-10,block[1],block[2]) <= point_distance(x,y-10,plat[1],plat[2])) && 
            (!is_array(plr) || plr[0] == noone || point_distance(x,y-36,block[1],block[2]) <= point_distance(x,y-36,plr[1],plr[2]))) {
                //with player_id{create_hitbox(AT_NSPECIAL, 1, floor(other.block[1]), floor(other.block[2]));}
                //spawn_hit_fx(floor(block[1]), floor(block[2]), 301);
                finalCol = block;
                //collided = true;
            }
        }
        
        
    }
    if (state_timer >= 5) {
        with (player_id) {
            var hbox = create_hitbox(AT_NSPECIAL, 2, floor(other.finalCol[1]), floor(other.finalCol[2]));
            if (other.finalCol[0] != noone && "object_index" in other.finalCol[0]) hbox.spr_dir = sign(other.finalCol[0].x-other.x);
            else hbox.spr_dir = sign(other.finalCol[1]-other.x);
        }
        spawn_hit_fx(floor(finalCol[1]), floor(finalCol[2]), player_id.plasma_hitfx);
        //finalCol = block;
        //collided = true;
        shoost_anim_timer = 0;
        state = 2;
        state_timer = 0;
    }
}



//State 5: tag throw

if (state == 5){
	//Put something here if you want
	if (instance_exists(tag)) {
		if state_timer == 0 sound_play(asset_get("sfx_absa_concentrate"));
    	var currenttarget = noone;
        var shortest_dist = 9999;
        with (oPlayer) {
            if ((get_player_team(player) != get_player_team(other.player_id.player) && state != PS_DEAD && state != PS_RESPAWN) || instance_number(oPlayer) < 2) {
                //can be targeted, start checking
                if (point_distance(x,y-20,other.x,other.y-20) < shortest_dist) {
                    shortest_dist = point_distance(x,y-20,other.x-20,other.y-20);
                    currenttarget = id;
                }
            }
        }
        target = currenttarget;
        tag.x = lerp(tag.x,x,0.2);
    	tag.y = lerp(tag.y,y-30,0.2);
    	//tag.proj_angle = (point_direction(tag.x,tag.y,target.x,target.y-25)%180)+180*spr_dir;
    	tag.spr_dir = sign(target.x-x);
    	if ( tag.sprite_index == sprite_get("drone") ) {
     		tag.sprite_index = sprite_get("drone_charging");
     		tag.mask_index = tag.sprite_index;
    		tag.image_index = 0;
    	} else if ( tag.sprite_index == sprite_get("drone_charging") && tag.image_index == 5 ){
    		tag.sprite_index = sprite_get("drone_charged");
     		tag.mask_index = tag.sprite_index;
    		tag.image_index = 0;
    	}
	}
	if (state_timer == 35 || !instance_exists(tag)) {
	    if (instance_exists(tag)) {
	    	repeat(2) sound_play(asset_get("sfx_ell_small_missile_fire"),false,-4,1,1.4);
    	    tag.hsp = lengthdir_x(16,point_direction(tag.x,tag.y,target.x,target.y-25));
    	    tag.vsp = lengthdir_y(16,point_direction(tag.x,tag.y,target.x,target.y-25));
    	    tag.kb_angle = 90;
    	    tag.hit_flipper = 0;
    	    tag.kb_value = 6;
    	    tag.kb_scale = .1;
    	    tag.hitpause = 4;
    	    tag.changed = 2;
    	    tag.through_platforms = 6;
    	    charges--;
	    }
	    state = 1;
	    state_timer = 0;
	    target = noone;
	}
}



//State 6

if (state == 6){
	//Put something here if you want
}



//State 7

if (state == 7){
	//Put something here if you want
}



//State 8

if (state == 8){
	//Put something here if you want
}



//State 9: Attack

if (state == 9){
    
    //11 frames in, create DSPECIAL hitbox 1
    if (state_timer == 11){
    	create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise"));
    }
    
    //11 frames in, create DSPECIAL hitbox 2
    if (state_timer == 15){
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	sound_play(sound_get("a_cool_noise2"));
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    state = 2;
	    state_timer = 0;
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
	case 0:
		animation_type = 3;
		break;
    case 1:
    	//new_sprite = sprite_get("article2_active");
        if (charges == 2) {
            new_sprite = sprite_get("article2_active");
        } else if (charges == 1) {
            new_sprite = sprite_get("article2_blink");
        }
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("article2_death");
        animation_type = 2;
        //new_sprite = sprite_get("your_sprite3");
        //animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("article2_active");
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    	break;
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
        
    case 3: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod spawn_anim_rate == 0 && image_index < image_number-1){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}


if shoost_anim_timer != -1 && shoost_anim_timer < 20 {
	shoost_anim_timer++;
}


//Make time progress
if (hitstop <= 0) state_timer++;
#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;

#define createParticle(amt,indoff,xvar,yvar,sprite,x,y,hsp,vsp,hAccel,vAccel,alpha,alpha_rate,lifetime,uses_shader)
var ind = indoff;
repeat(amt) {
    var newParticle = {
        sprite: sprite,     //sprite
        x: (x+random_func((ind++)%25,xvar,true)-floor(xvar/2))&~1,      //x
        y: (y+random_func((ind++)%25,yvar,true)-floor(yvar/2))&~1,      //y
        hsp: hsp,      //hsp
        vsp: vsp,      //vsp
        hAccel: hAccel,      //hAccel
        vAccel: vAccel,      //vAccel
        alpha: alpha,      //alpha
        alpha_rate: alpha_rate,      //alpha rate
        timer: 0,      //particle timer
        lifetime: lifetime,       //particle lifetime
        shader: uses_shader
        };
    ds_list_add(player_id.particles,newParticle);
}