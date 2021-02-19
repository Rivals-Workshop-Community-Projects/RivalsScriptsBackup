//Enemy death event
var eid = 0
if ("enemy_id" in self)
    eid = enemy_id;
    
switch (eid) {
    case 0: //Drac
        death_timer ++;
        
        if (death_timer == 1) {
            hsp = 0;
            vsp = 0;
            with (asset_get("obj_stage_article")) {
                if (get_article_script(id) == 4) {
                    instance_destroy(id);
                    continue;
                }
            }
            
           
            var bigdrac = create_enemy(x, y, 1);
            bigdrac.spr_dir = spr_dir;
            obj_stage_main.boss_article_id[0] = bigdrac;
            obj_stage_main.boss_fight_state = 1;
            instance_destroy(hurtbox_id);
            instance_destroy(id);
            exit;
        }
    break;
    case 1: //Drac
        death_timer ++;
        claw_spr = -1;
        
        if (phase == 0) {
            if (!free) {
                phase = 2;
            }
            else
                phase = 1;
		    death_timer = 0;
        }
        if (phase == 1) {
            if (death_timer == 1) {
		        hsp = 0;
		        vsp  = 0;
            }
            image_index = 1 + floor((clamp(-vsp, -3, 3) + 3) / 3);
    		
    		if (!free && vsp >= 0) {
		        phase = 2;
		        hsp = 0;
		        vsp  = 0;
		        var trans = instance_create(round(x), round(y), "obj_stage_article", 4)
	            trans.sprite_index = sprite_get("fx_shock");
		        sound_play(asset_get("sfx_kragg_rock_shatter"));
				obj_stage_main.shake_amount = 8;
		        death_timer = 0;
    		}
        }
        if (phase == 2) {
            if (death_timer == 1) {
		        sound_play(sound_get("sfx_dracula2_roar_die"));
		        sprite_index = sprite_get("dracula2_die");
            }
            image_index += 0.4;
            
            if (death_timer == 90) {
		        sound_play(sound_get("sfx_dracula_die"));
		        death_fade_timer = 0.04;
		        sprite_index = asset_get("empty_sprite");
            }
            
            
            if (death_timer >= 90) {
                death_fade_timer += 0.005;
				obj_stage_main.shake_amount = 8;
                if (death_timer % 8 == 0) {
                    for (var i = 0; i < 8; i++) {
                        var x_rand = x + (-128 + random_func(5 + i, 256, true));
                        var y_rand = y + (-16 + random_func(6 + i, 32, true)) + lerp(0, -288, death_fade_timer);
                        var fx_rand = random_func(7 + i, 100, true) < 50 ? 13 : 14;
                        spawn_hit_fx(x_rand, y_rand, fx_rand);
                    }
                }
                
                if (death_fade_timer >= 1) {
                    instance_destroy(hurtbox_id);
                    instance_destroy(id);
		            sound_play(sound_get("sfx_boss_deadexpl"));
                    exit;
                }
            }
        }
    break
}

#define create_enemy(spawn_x, spawn_y, enemyID)
var e = instance_create(spawn_x, spawn_y, "obj_stage_article", 1);
e.enemy_id = enemyID;
with (e) user_event(0);
return e;