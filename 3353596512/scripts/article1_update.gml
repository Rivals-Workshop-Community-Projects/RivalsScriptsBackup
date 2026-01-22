//ladder
if (state != 0){
    state_timer++;
}


if (free && state > 0){
    vsp += ladder_gravity;
}

image_index += anim_speed;

switch (extension_size){
    case 0:
    extend_timer_max = 24;
    break;
    case 1:
    extend_timer_max = 36;
    break;
    case 2:
    extend_timer_max = 48;
    break;
    case 3:
    extend_timer_max = 60;
    break;
}


if (player_id.object_index != oTestPlayer){
    if (x > get_stage_data(SD_RIGHT_BLASTZONE_X) + 16) || (x < get_stage_data(SD_LEFT_BLASTZONE_X) - 16) || (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y)) || (y < get_stage_data(SD_TOP_BLASTZONE_Y)){
    	    instance_destroy(self);
    	    exit;
        }
    }
    
switch (state){
    case 0: //inert
    break;
    case 1: //spawn + open
        sprite_index = sprite_get("ladder_box");
        mask_index = sprite_get("ladder_mask");
        if (state_timer == 12){
            anim_speed = 0.2;
        }
        if (image_index >= 5){
            image_index = 5;
            anim_speed = 0;
        }
        if (state_timer == 22){
            if (!ladder_was_parried){
                sound_play(sound_get("ladder_open"));
                sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 0.6, 1);
            } else {
                state = 5;
                state_timer = 0;
                vsp = -5;
                sprite_index = sprite_get("ladder_box_destroy");
                image_index = 0;
                anim_speed = 0.25;
                y -= 14
                mask_index = asset_get("empty_sprite");
                sound_play(sound_get("ladder_fall" + string(random_func(0, 2, true) + 1 )), false, noone, 0.8, 1);
                var destroy_fx = spawn_hit_fx(x, y - 10, 302);
                destroy_fx.depth = depth-4;
            }
        }
        if (state_timer == 40){
            state = 2;
            state_timer = 0;
        }
    break;
    case 2: //extending
    depth = player_id.depth;
    if (state_timer == 15){
        extend_sound = sound_play(sound_get("ladder_extend"), true, noone, 1, 1);
    }
    if (state_timer >= 15){
        if (extend_timer < extend_timer_max){
            extend_timer++;
        }
    }
    if (extend_timer == extend_timer_max){
        sound_volume(extend_sound, 0, 15);
        if (!is_extended){
            sound_play(sound_get("ladder_fall" + string(random_func(0, 2, true) + 1 )), false, noone, 0.8, 1);
            is_extended = true;
        }
    }
    if (state_timer == 15 + extend_timer_max + 60){
        state = 3
        state_timer = 0;
        sprite_index = sprite_get("ladder_extended");
        image_index = extension_size+1;
        fall_x = x;
    }
    break;
    case 3: //falling
        if (fall_timer < fall_timer_max){
            fall_timer++;
        }
        if (fall_timer == fall_timer_max){
            if (!has_fallen && !free){
                sound_play(sound_get("ladder_fall" + string(random_func(0, 2, true) + 1 )), false, noone, 0.8, 1);
                sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.3, 1.5);
                ladder_fall_hitbox();
                spawn_base_dust(x + (106 + (extension_size*40))*spr_dir, y + 20, "dash_start", -spr_dir);
                switch (extension_size){
                    case 0:
                        spawn_base_dust(x + (80 + (extension_size*40))*spr_dir, y + 20, "bounce", spr_dir);
                    break;
                    case 1:
                        spawn_base_dust(x + (60 + (extension_size*40))*spr_dir, y + 20, "bounce", spr_dir);
                    break;
                    case 2:
                        spawn_base_dust(x + (70 + (extension_size*40))*spr_dir, y + 20, "bounce", spr_dir);
                        spawn_base_dust(x + (0 + (extension_size*40))*spr_dir, y + 20, "bounce", spr_dir);
                    break;
                    case 3:
                        spawn_base_dust(x + (60 + (extension_size*40))*spr_dir, y + 20, "bounce_big", spr_dir);
                        spawn_base_dust(x + (-40 + (extension_size*40))*spr_dir, y + 20, "bounce_big", spr_dir);
                    break;
                }
                depth = player_id.depth+1;
                has_fallen = true;
                if (!instance_exists(player_id.ladder_plat)){
                    if (spr_dir == 1){
                        player_id.ladder_plat = instance_create(floor(x + 26), floor(y - 14), "obj_article_platform");
                    } else {
                        player_id.ladder_plat = instance_create(floor(x - (116 + (40*extension_size))), floor(y - 14), "obj_article_platform");
                    }
                } 
                state = 4;
                state_timer = 0;
                }

            }
        image_angle = floor(ease_sineIn(0, 90*-spr_dir, fall_timer, fall_timer_max));
    break;
    case 4: //collapsing
        if (instance_exists(player_id.ladder_plat)){
            if (spr_dir == 1){
                player_id.ladder_plat.x = floor(x + 26);
                player_id.ladder_plat.y = floor(y - 14);
            } else {
                player_id.ladder_plat.x = floor(x - (116 + (40*extension_size)));
                player_id.ladder_plat.y = floor(y - 14);
            }
        } 
        if (state_timer > 70 && state_timer % 35 == 0 && state_timer != 0 && !is_collapsing){
            sound_play(sound_get("ladder_alarm"), false, noone, 0.8, 1);
        }
        if (state_timer >= 180){
            if (!is_collapsing){
                is_collapsing = true;
                sound_play(sound_get("ladder_collapse"));
                if (instance_exists(player_id.ladder_plat)) instance_destroy(player_id.ladder_plat);
            }
            sprite_index = sprite_get("ladder_box")
            image_index = 5;
            if (collapse_timer > 0){
                collapse_timer--;
            }
            if (collapse_timer == 0){
                state = 5;
                state_timer = 0;
                vsp = -5;
                sprite_index = sprite_get("ladder_box_destroy");
                image_index = 0;
                anim_speed = 0.25;
                x += 18*spr_dir;
                hsp -= 2 * spr_dir
                mask_index = asset_get("empty_sprite");
                sound_play(sound_get("ladder_fall" + string(random_func(0, 2, true) + 1 )), false, noone, 0.8, 1);
                spawn_hit_fx(x - 4 *spr_dir, y - 10, 302);
            }
        }
    break;
    case 5: //destroyed
        ignores_walls = true;
        can_be_grounded = false;
        if (image_index >= 4){
            image_index = 4;
        }
        if (state_timer % 3 == 0){
            image_angle += -90*spr_dir;
        }
        if (state_timer >= 60 && player_id.playtest_active){
            instance_destroy(self);
    	    exit;
        }
    break;
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    case "bounce": dlen = 15; dfx = 19; dfg = 2656; dust_color = 1; break;
    case "bounce_big": dlen = 16; dfx = 8; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define ladder_fall_hitbox()

        var impact = create_hitbox(2, 1, x + (66 + (extension_size*20))*spr_dir , y);
        var impact_air = create_hitbox(2, 2, x + (66 + (extension_size*20))*spr_dir , y);
        impact.spr_dir = spr_dir;
        impact_air.spr_dir = spr_dir;
        impact.kb_scale += 0.1*extension_size;
        impact_air.kb_scale += 0.1*extension_size;
        impact.damage += 2*extension_size;
        impact_air.damage += 2*extension_size;
        impact.image_xscale += 0.2*extension_size;
        impact_air.image_xscale += 0.2*extension_size;
        impact.hitpause += 2*extension_size;
        impact_air.hitpause += 2*extension_size;
        impact.can_hit_self = true;
        impact_air.can_hit_self = true;