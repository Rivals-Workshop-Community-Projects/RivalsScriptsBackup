//
timer++;

if timer == 1 {
    with obj_stage_article {
		if get_article_script(id) == 3 && type == "body" {
			can_draw_heart = false;
		}
	}
}

if type != 3 {
	if !explode {
	    x = spawnx + (dsin(timer*1.4) * 40);
	    if timer < 40 {
	    	y = ease_quadOut(floor(y), floor(spawny - 80), timer, 40);
	    } else {
	    	y = spawny - 80;
	    }
	} else {
	    x = ease_quadOut(floor(x), spawnx, explode_timer, 40);
	    y = ease_quadOut(floor(y), floor(spawny), explode_timer, 40);
	}
}

if timer mod 140 == 0 {
    flash = true;
}

if flash {
    flash_timer++;
    
    if flash_timer mod 4 == 1 {
        image_index++;
    }
    
    if flash_timer == 20 {
        flash = false;
        flash_timer = 0;
    }
}


if was_hit {
    hit_timer++;
    
    if hit_timer == 1 {
        sound_play(sound_get("heart_hit"));    
    }
    
    if hit_timer <= 3 {
        x += bump_x;
        y -= bump_y;
    }
    
    if hit_timer > 20 {
        was_hit = 0;
        hit_timer = 0;
    }
}

var hitbox = place_meeting(x, y, pHitBox);
if hitbox != false {
	var hitbox_instance = instance_place(x, y, pHitBox);
		if hitbox_instance.player_id != player_id {
	    was_hit = true;
	    bump_x = hitbox.spr_dir * dcos(hitbox_instance.kb_angle) * 12;
	    bump_y = sin(hitbox_instance.kb_angle) * 12;
	    if hit_timer == 0 {
	        hit_counter++;
	        dmg_counter += hitbox_instance.damage;
	    }
	}
}

if hit_counter >= 5 {
    explode = true;
}

if explode {
    explode_timer++;
    var num_stars = 10;
    if explode_timer == 1 {
        vfx_arr = array_create(num_stars, undefined);
        with obj_stage_article {
    		if get_article_script(id) == 3 {
    			if type == "head" {
    				shocked_face = true;
    			}
    		}
		}
    }
    if explode_timer == 10 {
        sound_play(sound_get("heart_explode"));
    }
    
    if explode_timer < 20 {
        image_xscale -= 0.05;
        image_yscale -= 0.05;
    } else if explode_timer < 35 {
        image_xscale += 0.1;
        image_yscale += 0.1;
    } else if explode_timer < 40 {
        image_xscale = 1;
        image_yscale = 1;
    }
    
    if explode_timer == 20 {
        for (var i = 0; i < num_stars; i++) {
            var starfx = spawn_hit_fx(x + (dcos(360*i/num_stars)), y + (dsin(360*i/num_stars)), star_vfx);
            vfx_arr[i] = starfx;
        }
    }
    
    for (var i = 0; i < num_stars; i++) {
        var item = vfx_arr[i];
        if item != undefined {
            with item {
                x += dcos(360*i/num_stars) * 2;
                y += dsin(360*i/num_stars) * 2;
                draw_angle += 2;
            }
        }
    }
}

if !explode && type != 3 {
	switch (timer mod 200) {
		case 100:
		var spawnnum = 5;
		for (var i = 0; i < spawnnum; i++) {
			spawn_lightning(x, y, ((360/spawnnum)*i) + 72);
		}
		break;
		
		case 120:
		var spawnnum = 5;
		for (var i = 0; i < spawnnum; i++) {
			spawn_lightning(x, y, ((360/spawnnum)*i) + 40 + 72);
		}
		break;
		
		case 140:
		var spawnnum = 5;
		for (var i = 0; i < spawnnum; i++) {
			spawn_lightning(x, y, ((360/spawnnum)*i) + 60 + 72);
		}
		break;
	}
}

//add orbiting boxes
if type == 1 {
	var num_blocks = 6;
	if timer == 1 {
		block_dist = 40;
		spd = 4;
	}
	if timer mod 500 >= 350 {
		block_dist -= 4;
		spd = 2;
	} else if timer mod 500 > 200 {
		block_dist += 4;
		spd = 2;
	}
	if timer == 1 || timer mod 500 == 350 || explode {
		with obj_stage_article {
			if get_article_script(id) == 3 && type == "body" {
				can_draw_heart = true;
			}
			if get_article_script(id) == 10 {
				instance_destroy(id);
			}
		}
		if !explode {
			for (var i = 0; i < num_blocks; i++) {
				spawn_block_proj(floor(x + block_dist*dcos(360*i/num_blocks)), floor(y + block_dist*dsin(360*i/num_blocks)), 0, 0, 1, i);
			}
		}
	} else {
		with obj_stage_article {
			if get_article_script(id) == 10 {
				x = other.x + other.block_dist*dcos((other.timer*other.spd) + (arb_var*360/num_blocks))
				y = other.y + other.block_dist*dsin((other.timer*other.spd) + (arb_var*360/num_blocks))
			}
		}
	}
}

//orbiting bombs
if type == 2 {
	var num_bombs = 2;
	if timer == 1 {
		bomb_dist = 50;
		spd = 3;
	}
	if timer == 1 {
		for (var i = 0; i < num_bombs; i++) {
			spawn_bomb_proj(floor(x + bomb_dist*dcos(360*i/num_bombs)), floor(y + bomb_dist*dsin(360*i/num_bombs)), 0, i);
		}
	} else {
		with obj_stage_article {
			if get_article_script(id) == 7 {
				x = other.x + other.bomb_dist*dcos((other.timer*other.spd) + (arb_var*360/num_bombs))
				y = other.y + other.bomb_dist*dsin((other.timer*other.spd) + (arb_var*360/num_bombs))
			}
		}
	}
}

//lasers
/*
if type == 3 {
	if timer < 80 {
		y = spawny - timer;
	} else if (timer - 80) mod 120 < 40 {
		if (timer - 80) mod 120 == 0 {
			move_to[0] = spawnx + random_func_2(id mod 200, 200, true) - 100;
			move_to[1] = spawny + random_func_2((id+1001) mod 197, 100, true) - 50;
		}
		if abs(x - move_to[0]) > 10 {
			x -= sign(move_to[0])*5
		}
		if abs(y - move_to[1]) > 10 {
			y += sign(move_to[1])*5
		}
	}
}

print_debug(string(move_to))
*/
//print_debug(string(hit_counter) + ', ' + string(dmg_counter))

#define spawn_lightning(spawnx, spawny, spawndir)
var lightning = instance_create(floor(spawnx), floor(spawny), "obj_stage_article", 15);
	lightning.hsp = dcos(spawndir) * 4;
	lightning.vsp = dsin(spawndir) * 4;
	lightning.proj_angle = spawndir;
	lightning.image_angle = -spawndir;
	
#define spawn_block_proj(blockx, blocky, blockhsp, blockvsp, destructable, arb_var)
var block = instance_create(blockx, blocky, "obj_stage_article", 10);
	block.spawnx = blockx;
	block.spawny = blocky;
	block.blockhsp = blockhsp;
	block.blockvsp = blockvsp;
	block.destructable = destructable;
	block.arb_var = arb_var;
return block;
#define spawn_bomb_proj(spawnx, spawny, bombspeed, arb_var)
var bomb = instance_create(spawnx, spawny, "obj_stage_article", 7)
	bomb.spawnx = spawnx;
	bomb.spawny = spawny;
	bomb.bombspeed = bombspeed;
	bomb.arb_var = arb_var;
return bomb;