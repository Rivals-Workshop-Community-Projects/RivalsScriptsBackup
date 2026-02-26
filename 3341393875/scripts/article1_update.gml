can_be_hit[player_id.player] = 2;
state_timer++;

if (hitstop == 1){
	
    hsp = -4 * spr_dir;
    vsp = -8;

	if (minion_name == "minijohn" && has_rune("L")){
		hsp = 0;
		vsp = -10;
	}
}


// state machine
switch state{
    case "SUMMON":
        sprite_index = sprite_get(minion_name + "_summon");
        
        is_hittable = 0;
        ignores_walls = 1;
        
        if state_timer == 2{
            state = free? "FALL":"WALK";
            sprite_index = free? sprite_get(minion_name + "_fall"):sprite_get(minion_name + "_walk");
            image_index = 0;
        }
    break;
    case "FALL":
        sprite_index = sprite_get(minion_name + "_fall");
        
        is_hittable = 1 - spawn_invincibility;
        ignores_walls = 0;
        
        hsp = 0;
        vsp = clamp(vsp + 0.3, 0, 8);
        if (!free){
            state = "WALK";
            sprite_index = sprite_get(minion_name + "_walk");
            image_index = 0;
            spawn_invincibility = false;
        }
    break;
    case "WALK":
        sprite_index = sprite_get(minion_name + "_walk");
        image_index += minion_walkanim_speed;
        
        is_hittable = 1;
        ignores_walls = 0;
        
        if (!(place_meeting(x + 48 * spr_dir, y + 8, asset_get("par_block")) || place_meeting(x + 48 * spr_dir, y + 1, asset_get("par_jumpthrough"))) || place_meeting(x, y, asset_get("par_block"))) && minion_offedge == false{
            state = minion_turn == 0? "WALK":"TURN";
            if minion_turn > 0{
                sprite_index = sprite_get(minion_name + "_turn");
                image_index = 0;
            }
            spr_dir *= -1;
        }
        else{
            hsp = minion_speed * spr_dir;
            vsp = 0;
        }
        
        if !(place_meeting(x, y + 8, asset_get("par_block")) || place_meeting(x, y + 1, asset_get("par_jumpthrough")) || place_meeting(x, y + 8, asset_get("par_block")) || place_meeting(x , y + 1, asset_get("par_jumpthrough"))){
			state = "FALL"
			state_timer = 0;
			sprite_index = sprite_get(minion_name + "_fall");
			image_index = 0;
        }
    break;
    case "TURN":
        sprite_index = sprite_get(minion_name + "_turn");
        image_index += minion_turnanim_speed;
        
        is_hittable = 1;
        ignores_walls = 0;
        
        hsp = 0;
        vsp = 0;
        
        if state_timer >= minion_turn{
            state = "WALK";
            sprite_index = sprite_get(minion_name + "_walk");
            image_index = 0;
        }
    break;
    case "JUMP":
        sprite_index = sprite_get(minion_name + "_walk");
        image_index += minion_walkanim_speed;
        
        is_hittable = 1;
        ignores_walls = 0;
        
        vsp += 0.3;
        
        if !free{
			state = "WALK";
            sprite_index = sprite_get(minion_name + "_walk");
            image_index = 0;
        }
    break;
    case "ATTACK":
        sprite_index = sprite_get(minion_name + "_attack");
        
        is_hittable = 1;
        ignores_walls = 0;
    break;
    case "HURT":
        sprite_index = sprite_get(minion_name + "_fall");
        
        is_hittable = 1;
        ignores_walls = 0;
        
        vsp = clamp(vsp + 0.3, -7, 12);
		hsp *= 0.98;
        
        if !hitstop && vsp > 0 && !free{
			state = "WALK";
            sprite_index = sprite_get(minion_name + "_walk");
            image_index = 0;
        }
    break;
    case "DEATH":
        sprite_index = sprite_get(minion_name + "_death");
        
        is_hittable = 0;
        ignores_walls = 1;
        
        vsp = clamp(vsp + 0.3, -7, 12);
        
        if state_timer % 4 == 0{
			spawn_hit_fx(x, y + 40, orig_player_id.minion_deathparticles);
        }
    break;
}

// minion-specific behavior
switch minion_name{
    case "cheeseslime":
        if state == "WALK"{
			depth = 1;

            if state_timer == 1{
                slime_level = y - floor(y % 16);
                slime_left_bound = x - floor(x % 32);
                slime_right_bound = x - floor(x % 32);
            }
            if x - floor(x % 32) < slime_left_bound{
                slime_left_bound = x - floor(x % 32);
            }
            if x - floor(x % 32) > slime_right_bound{
                slime_right_bound = x - floor(x % 32);
            }
            if !(place_meeting(slime_left_bound - 16, y + 1, asset_get("par_block")) || place_meeting(slime_left_bound - 16, y + 1, asset_get("par_jumpthrough"))){
				slime_left_bound += 32;
            }
            if !(place_meeting(slime_right_bound + 48, y + 1, asset_get("par_block")) || place_meeting(slime_right_bound + 48, y + 1, asset_get("par_jumpthrough"))){
				slime_right_bound -= 32;
            }
            with oPlayer{
                if player != other.orig_player_id.player && y == other.slime_level && x >= other.slime_left_bound && x <= other.slime_right_bound + 32 && !free{
					if (state == PS_WALK && state_timer % 16 == 0) || (state == PS_DASH && state_timer % 8 == 0){
						with other sound_play(sound_get("cheesestep" + string(random_func_2(get_gameplay_time() % 200, 4, true) + 1)));
					}
					cheesed_timer = 3;
                }
                if (cheesed_timer){
					with (other){
						var pizzaHasRune = has_rune("L");
					}
					if state == PS_JUMPSQUAT && state_timer == jump_start_time - 1{
						with other sound_play(sound_get("cheesejump" + string(random_func_2(get_gameplay_time() % 200, 4, true) + 1)));
					}
					x -= hsp * (0.33 + (pizzaHasRune * 0.33));
                    vsp -= vsp * (0.33 + (pizzaHasRune * 0.33));
					cheesed_timer--;
                }
            }
        }
        if state == "FALL"{
			slime_level = -999;
			slime_left_bound = -999;
			slime_right_bound = -999;
        }
    break;
    case "forknight":
        if (state == "WALK"){
            var fork = create_hitbox(AT_DSPECIAL, 1, x + (36 * spr_dir), y - 18);
            for (var f = 0; f < 20; f++;){
                if (hit_timer[f] > 0){
                    hit_timer[f]--;
                } else {
                	has_hit[f] = false;
                }
                fork.can_hit[f] = !has_hit[f];
                fork.hbox_owner = self;
            }

			if (get_gameplay_time() % 70 == 0 && has_rune("L")){
				if (!has_rune("H")){
					var forkProjectile = create_hitbox(AT_DSPECIAL_2, 5, x + 36 * spr_dir, y);
					forkProjectile.max_fall = 30;
				} else {
					var forkProjectile = create_hitbox(AT_DSPECIAL_2, 6, x + 36 * spr_dir, y - 20);
					forkProjectile.vsp = -15;
					forkProjectile.hsp = 0;
					forkProjectile.length = 300;
				}
			}
        }
    break;
    case "banditochicken":
		if (state == "WALK"){
			if (state_timer % jump_timer == 0 && ((place_meeting(x + 185 * spr_dir, y + 10, asset_get("par_block")) || place_meeting(x + 185 * spr_dir, y + 10, asset_get("par_jumpthrough"))) || has_rune("L"))){
					vsp = -6 * (has_rune("L") + 1);
					sound_play(sound_get("banditochicken"), false, false, 2);
					jumps++;
				if (jumps == bombjump){
					
					if (has_rune("L")){
						hsp = 0;
					} else {
						var dynamite = create_hitbox(AT_DSPECIAL, 2, x - (24 * spr_dir), y - 30);
						dynamite.spr_dir = spr_dir;
						dynamite.draw_xscale = spr_dir;
						dynamite.hsp = -3 * spr_dir;
						sound_play(asset_get("sfx_bubblepop"));
						
						dynamite.hbox_owner = self;
					}
					jumps = 0;
				}
				state = "JUMP";
			}
		}

		if (state == "JUMP"){
			if (has_rune("L")){
				if (vsp < 0 && state_timer % 12 == 0){
					var dynamite = create_hitbox(AT_DSPECIAL, 2, x - (24 * spr_dir), y - 30);
					dynamite.spr_dir = spr_dir;
					dynamite.draw_xscale = spr_dir;
					dynamite.hsp = vsp * 0.5 * spr_dir;
					sound_play(asset_get("sfx_bubblepop"));
					
					dynamite.hbox_owner = self;
				}
			}
		}
    break;
    case "badrat":
		attack_timer--;
		
		if state == "WALK"{
			var pizzaHasRune2 = has_rune("L");
			with oPlayer{
				if (self != other.orig_player_id && (other.spr_dir == 1 && x > other.x && x <= other.x + (140 + (pizzaHasRune2 * 450)) || (other.spr_dir == -1 && x < other.x && x >= other.x - (140 + (pizzaHasRune2 * 450)) )) && y < other.y && y >= other.y - 50) && other.attack_timer <= 0{
					with (other){
						state = "ATTACK";
						state_timer = 0;
						sprite_index = sprite_get(minion_name + "_attack");
						image_index = 0;
						sound_play(sound_get("badrat"), false, false, 2);
						exit;
					}
				}
			}
		}
		if state == "ATTACK"{
			if (state_timer <= 13){
				hsp = 0;
				vsp = 0;
				
				for (var f = 0; f < 20; f++;){
					has_hit[f] = false;
				}
			}
			else if (state_timer <= 31){
				hsp = (7 + (has_rune("L") * 21)) * spr_dir;
				vsp = 0;
				
				if (state_timer % 3 == 0){
					CreateAfterimage(18);
				}
				
				var bite = create_hitbox(AT_DSPECIAL, 4, x + (36 * spr_dir), y - 24);
				for (var f = 0; f < 20; f++;){
					bite.can_hit[f] = !has_hit[f];
				}
				bite.hbox_owner = self;
			}
			else if (state_timer <= 45){
				if hsp > 2 || hsp < -2{
					hsp *= 0.9;
				}
				else{
					hsp = 0;
				}
				vsp = clamp(vsp + 0.3, 0, 7);
				
				if (state_timer >= 40 && !free){
					state_timer = 49;
				}
				if (state_timer == 48){
					state_timer--;
				}
			}
			else{
				hsp *= 0.9;
				vsp = 0;
				
				if state_timer >= 65{
					state = "WALK";
					sprite_index = sprite_get(minion_name + "_walk");
				}
			}

			if (has_rune("L") && !(place_meeting(x + 50 * spr_dir, y + 10, asset_get("par_block")) || place_meeting(x + 50 * spr_dir, y + 10, asset_get("par_jumpthrough")))){
				hsp = 0;
			}
			image_index = floor((state_timer + 1) / 4);
			attack_timer = attack_cooldown;
		}
    break;
    case "ninjaslice":
		attack_timer--;
		
		if state == "WALK"{

			var nearest = noone;
			var dist = 10000;
			with oPlayer{
				if self != other.orig_player_id && ((other.spr_dir == 1 && x > other.x && x <= other.x + 150) || (other.spr_dir == -1 && x < other.x && x >= other.x - 150)) && y < other.y && y >= other.y - 30 && other.attack_timer <= 0{
					with other{
						state = "ATTACK";
						state_timer = 0;
						sprite_index = sprite_get(minion_name + "_attackground");
						image_index = 0;
						attack = "GROUND";
						exit;
					}
				}
				if self != other.orig_player_id && ((other.spr_dir == 1 && x > other.x && x <= other.x + 50) || (other.spr_dir == -1 && x < other.x && x >= other.x - 50)) && y < other.y && y >= other.y - 150 && other.attack_timer <= 0{
					with other{
						state = "ATTACK";
						state_timer = 0;
						sprite_index = sprite_get(minion_name + "_attackair");
						image_index = 0;
						attack = "AIR";
						exit;
					}
				}
				if player != other.player && point_distance(x, y, other.x, other.y) < dist{
					nearest = self;
					dist = point_distance(x, y, other.x, other.y);
				}
			}
			if nearest != noone{
				if ((dist > 200 || nearest.y < y - 50) && abs(nearest.x - x) > 25) || attack_timer <= 0{
					hsp = 5 * spr_dir;
				}
				else if dist < 175 && abs(nearest.x - x) > 25{
					hsp = -3 * spr_dir;
				}
				else hsp = 0;
				if (nearest.x > x && spr_dir == -1) || (nearest.x < x && spr_dir == 1){
					spr_dir *= -1;
				}
            }
			if (has_rune("L") && !(place_meeting(x + (hsp * 10), y + 10, asset_get("par_block")) || place_meeting(x + (hsp * 10), y + 10, asset_get("par_jumpthrough")))){
				hsp = 0;
			}
		}
		if state == "ATTACK"{
			
			if attack == "GROUND"{
				sprite_index = sprite_get(minion_name + "_attackground");
				image_index = floor((state_timer - 1) / 3);
				
				if state_timer <= 18{
					hsp = 0;
					vsp = 0;
					
					for (var f = 0; f < 20; f++;){
						has_hit[f] = false;
					}
				}
				else if state_timer <= 45{
					var kickflurry = create_hitbox(AT_DSPECIAL, 5, x + (36 * spr_dir), y - 30);
					for (var f = 0; f < 20; f++;){
						if state_timer % 6 == 2{
							has_hit[f] = false;
							if state_timer >= 39{
								kickflurry.damage = 3;
								kickflurry.kb_value = 7;
								kickflurry.kb_scale = 0.7;
								kickflurry.hitpause = 7;
								kickflurry.hitpause_growth = 0.7;
								kickflurry.hit_flipper = 0;
							}
						}
						kickflurry.can_hit[f] = !has_hit[f];
						kickflurry.hbox_owner = self;
					}
					
					if state_timer % 6 == 2{
						sound_play(asset_get(state_timer >= 39? "sfx_swipe_medium2":"sfx_swipe_weak2"), false, false, 0.8);
					}
				}
				else if state_timer >= 48{
					state = "WALK";
					sprite_index = sprite_get(minion_name + "_walk");
				}
			}
			else{
				sprite_index = sprite_get(minion_name + "_attackair");
				image_index = floor((state_timer - 1) / 3);
				
				
				vsp = clamp(vsp + 0.3, -8, 8);
				if state_timer == 1{
					hsp = 2 * spr_dir;
					vsp = -8;
					
					for (var f = 0; f < 20; f++;){
						has_hit[f] = false;
					}
					
					sound_play(sound_get("uppercut2"), false, false, 0.7);
				}
				if vsp < 0{
					var uppercut = create_hitbox(AT_DSPECIAL, 6, x + (6 * spr_dir), y - 44);
					for (var f = 0; f < 20; f++;){
						uppercut.can_hit[f] = !has_hit[f];
					}
					uppercut.hbox_owner = self;
					
					if (state_timer % 3 == 0){
						CreateAfterimage(18);
					}
				}
				else if !free{
					state = "WALK";
					sprite_index = sprite_get(minion_name + "_walk");
				}
			}
			
			attack_timer = attack_cooldown;
		}
    break;
    case "spitcheese":
		var nearest = noone;
		var dist = 10000;
		with (oPlayer){
			if player != other.player && point_distance(x, y, other.x, other.y) < dist{
				nearest = self;
				dist = point_distance(x, y, other.x, other.y);
			}
		}
		if state == "WALK"{
			if (nearest != noone){
				if (nearest.x > x && spr_dir == -1) || (nearest.x < x && spr_dir == 1){
					state = "TURN";
					state_timer = 0;
					sprite_index = sprite_get(minion_name + "_turn");
					image_index = 0;
					spr_dir *= -1;
				}
				var dx = nearest.x - (x + (34 * spr_dir));
				if ((dx < 0 && spr_dir == 1) || (dx > 0 && spr_dir == -1)){
					spit_timer--;
				}
            }
            spit_timer++;
            if spit_timer >= spit_time{
				spit_timer = 0;
				state = "ATTACK";
				state_timer = 0;
				sprite_index = sprite_get(minion_name + "_attack");
				image_index = 0;
            }
        }
        if state == "ATTACK"{
			if state_timer == 9{
				var facing = orig_player_id.spr_dir;
				orig_player_id.spr_dir = spr_dir;

				if (!has_rune("H")){
					var spit = create_hitbox(AT_DSPECIAL, 7, x + (24 * spr_dir), y - 36);
				} else {
					var spit = create_hitbox(AT_DSPECIAL_2, 6, x + (24 * spr_dir), y - 36);
					spit.length = 300;
				}

				spit.spr_dir = spr_dir;
				spit.draw_xscale = spr_dir;
				orig_player_id.spr_dir = facing;
				spit.max_fall = 30;

				if (!has_rune("L")){
					//var orgProjHsp = 0;
					//var orgProjVsp = 0;
					//with (player_id){
					//	orgProjHsp = get_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED);
					//	orgProjVsp = get_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED);
					//}
					//spit.hsp = (orgProjHsp + (abs(nearest.x - x)/80)) * spr_dir;
					//spit.vsp = (orgProjVsp - (abs(nearest.x - x)/80));
					var g = 0.5;

					var orgProjHsp = 0;
					var orgProjVsp = 0;
					
					with (player_id) {
					    orgProjHsp = get_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_HSPEED);
					    orgProjVsp = get_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_VSPEED);
					}
					
					// Distance to target
					var dx = nearest.x - (x + (24 * spr_dir));
					var dy = nearest.y - y;
					
					// Horizontal speed (keeps your original scaling)
					spit.hsp = (orgProjHsp + abs(dx) / 80) * sign(dx);
					
					// Time to reach target horizontally
					var t = abs(dx) / abs(spit.hsp);
					
					// Vertical speed needed to land on target height
					spit.vsp = (dy - 0.5 * g * t * t) / t;

				} else {
					var spitAngle = point_direction(x + (24 * spr_dir), y, nearest.x, nearest.y);
					spit.hsp = lengthdir_x(20, spitAngle);
					spit.vsp = lengthdir_y(20, spitAngle);
					spit.grav = 0;
					spit.grounds = 1;
					spit.walls = 1;
				}
				sound_play(asset_get("sfx_bubblepop"));
				
				spit.hbox_owner = self;
			}
			if state_timer >= 24{
				state = "WALK";
				sprite_index = sprite_get(minion_name + "_walk");
			}
			image_index = floor((state_timer - 1) / 4);
        }
    break;
    case "minijohn":
		attack_timer--;
		if state == "WALK"{
			var nearest = noone;
			var dist = 10000;
			with oPlayer{
				if self != other.orig_player_id && ((other.spr_dir == 1 && x > other.x && x <= other.x + 150) || (other.spr_dir == -1 && x < other.x && x >= other.x - 150)) && y < other.y && y >= other.y - 50 && other.attack_timer <= 0{
					with other{
						state = "ATTACK";
						state_timer = 0;
						sprite_index = sprite_get(minion_name + "_attack");
						image_index = 0;
						attack = "GROUND";
						exit;
					}
				}
				if player != other.player && point_distance(x, y, other.x, other.y) < dist{
					nearest = self;
					dist = point_distance(x, y, other.x, other.y);
				}
			}
			if nearest != noone{
				if (nearest.x > x && spr_dir == -1) || (nearest.x < x && spr_dir == 1){
					spr_dir *= -1;
				}
				if (place_meeting(x, y + 10, asset_get("par_block")) || place_meeting(x, y + 10, asset_get("par_jumpthrough"))){
					johnhsp = clamp(johnhsp + (0.15 * spr_dir), -5, 5);
					johnvsp = 0;
				}
				else{
					johnvsp = clamp(johnvsp + 0.3, 0, 8);
				}
				hsp = johnhsp;
				vsp = johnvsp;

				if (has_rune("L") && !(place_meeting(x + (hsp * 10), y + 10, asset_get("par_block")) || place_meeting(x + (hsp * 10), y + 10, asset_get("par_jumpthrough")))){
					hsp = 0;
				}
            }
		}
		if state == "ATTACK"{
			image_index = floor((state_timer+2) / 3);
			
			johnhsp *= 0.90;
			hsp = johnhsp;
			
			if state_timer <= 12{
				
				for (var f = 0; f < 20; f++;){
					has_hit[f] = false;
				}
				
				if state_timer == 12{
					sound_play(asset_get("sfx_swipe_heavy2"), false, false, 0.9);
				}
			}
			else if state_timer <= 16{
				var punch = create_hitbox(AT_DSPECIAL, 8, x + (65 * spr_dir), y - 35);
				for (var f = 0; f < 20; f++;){
					punch.can_hit[f] = !has_hit[f];
				}
				punch.hbox_owner = self;
				
				if (state_timer % 3 == 0){
					CreateAfterimage(21);
				}
			}
			else if state_timer >= 24{
				state = "WALK";
				sprite_index = sprite_get(minion_name + "_walk");
			}
			
			attack_timer = attack_cooldown;
		}
		if state != "WALK" && state != "ATTACK"{
			johnhsp = 0;
			johnvsp = 0;
		}
    break;
}

if x != clamp(x, -200, room_width + 200) || y > room_height + 200{
	//sound_play(sound_get("sfx_killenemy"));
	instance_destroy(self);
	exit;
} 

if state != prev_state{
    state_timer = 0;
    image_index = 0;
    prev_state = state;
}



//if !has_rune("O") orig_player_id.move_cooldown[AT_DSPECIAL] = 100;


if (!hitpause){
    var newArray = 0;
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
    }
    afterimage_array = newArray;
}


#define CreateAfterimage(imgLength)
{
//if (afterimage_colour = 1) var _color = $FF0000
    var _color = $FFFFFF
    afterimage_array[array_length_1d(afterimage_array)] = {smallSprites:small_sprites, x:x, y:y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:image_angle, col:_color, timer:0, timerMax:imgLength};
}
