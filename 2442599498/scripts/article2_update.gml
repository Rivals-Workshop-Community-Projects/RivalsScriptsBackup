//
timer++;

switch type {
    case "floodlight":
    sprite_index = sprite_get("floodlight");
    image_xscale = 3;
    image_yscale = 3;
    vsp = timer <= 90 ? 2 : 0;
    image_index = timer <= 140 ? 0 : 1;
    if timer == 90 || timer == 140 {
        sound_play(sound_get("chk"))
    }
    break;
    
    case "smoke":
    sprite_index = sprite_get("smoke");
    image_xscale = 3;
    image_yscale = 3;
    depth = 8;
    if timer == 1 {
        hsp = random_func_2(id mod 200, 6, false) - 3;
    }
    hsp *= 0.9;
    if timer > 30 {
        image_alpha -= 0.03;
    } else if image_alpha < 1 {
        image_alpha += 0.03;
    }
    if image_alpha <= 0 {
        instance_destroy();
    }
    break;
    
    case "breaktime":
    depth = 4;
    break;
    
    case "body_smoke":
    sprite_index = sprite_get("body_smoke");
    image_alpha = 0.5 - (timer/180);
    vsp = -2;
    hsp = spr_dir;
    image_angle += 2*spr_dir;
    image_xscale = 1 + (dsin(timer*12)/4)
    image_yscale = 1 + (dsin(timer*12)/4)
    
    if timer > 120 {
        instance_destroy();
    }
    break;
    
    case "attack_bar":
    depth = 5;
    sprite_index = sprite_get("attack_bar");
    var num_markers = 4;
    if timer == 1 {
        image_xscale = 1;
        image_yscale = 1;
        for (var i = 0; i < num_markers; i++) {
            var marker = instance_create(x - 320 - (100*i), y, "obj_stage_article", 19);
                marker.spawnx = marker.x;
                marker.spawny = marker.y;
                marker.index = i;
        }
        mtt_hit = false;
    }
    
    if mtt_hit {
        image_alpha -= 0.05;
        if image_alpha <= 0 {
            instance_destroy();
        }
    }
    break;
    
    case "pan_hit_large":
    depth = 4;
    sprite_index = sprite_get("pan_hit_large");
    if timer mod 8 < 4 {
        var scale_mod = 1;
    } else {
        var scale_mod = 1.4;
    }
    image_xscale = (3 - (timer/30))*scale_mod;
    image_yscale = image_xscale;
    image_angle += 4;
    image_alpha -= 0.15;
    
    if image_alpha < 0.1 {
        for (var i = 0; i < 8; i++) {
            var vfx = instance_create(room_width/2, 420, "obj_stage_article", 2);
                vfx.type = "pan_hit_small"
                vfx.index = i;
        }
        sound_play(sound_get("pan_hit_final"));
        instance_destroy();
    }
    break;
    
    case "pan_hit_small":
    depth = 4;
    sprite_index = sprite_get("pan_hit_small");
    image_xscale = 2;
    image_yscale = 2;
    image_angle += 3;
    image_alpha -= 0.02;
    var dist_mod = clamp(4 - (timer/15), 0, 4);
    x += dist_mod*dcos(360*(index/8))
    y += dist_mod*dsin(360*(index/8))
    
    if image_alpha < 0 {
        with obj_stage_article {
        	if get_article_script(id) == 3 {
	        	shake = true;
        	}
        }
        player_id.mtt_take_damage = true;
        player_id.mtt_has_took_damage = false;
        instance_destroy();
    }
    break;
    
    case "soul_broken":
    depth = -10000;
    sprite_index = sprite_get("soul");
    
    if timer == 4 {
    	image_index = 1;
    	sound_play(sound_get("soul_break1"));
    }
    
    if timer == 70 {
    	for (var i = 0; i < 5; i++) {
    		var shard = instance_create(x, y, "obj_stage_article", 2);
    			shard.type = "soul_shard";
    			shard.image_blend = image_blend;
    	}
    	sound_play(sound_get("soul_break2"));
    	instance_destroy();
    }
    break;
    
    case "soul_shard":
    depth = -10000;
    sprite_index = sprite_get("soul_shards");
    if timer == 1 {
    	vsp = random_func_2(id mod 200, 4, false) - 2.5;
    	hsp = random_func_2(id mod 197, 5, false) - 2.5;
    }
    vsp = clamp(vsp + 0.1, -8, 8);
    if timer mod 15 == 0 {
    	image_index++;
    }
    
    if timer > 200 {
    	instance_destroy();
    }
    break;
    
    case "game_over":
    depth = -10000;
    sprite_index = sprite_get("game_over")
    image_xscale = 1.5;
    image_yscale = 1.5;
    if image_alpha < 1 {
    	image_alpha += 0.01;
    }
    break;
    
    default:
    break;
}