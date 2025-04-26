//Platform update
state_timer++;

switch(state){
    case 0://Initial
        with (oPlayer) {
    		if !free && (position_meeting(x-50,y+1,other) or position_meeting(x+50,y+1,other)) {
    			if((state == PS_LANDING_LAG or state == PS_HITSTUN_LAND or state == PS_PRATLAND or state == PS_LAND or state == PS_TECH_GROUND or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) and state_timer == 2){
    			    other.plat_hp--;
    			    with(other){
    			        ice_generate(3)
    			    }
    			}
    		}
        }
        if(plat_hp = 0){
            state++;
        	state_timer = 0;
        	plat_hp = 3
        	sound_play(asset_get("sfx_oly_nspecial_flashbreak"))
        	ice_generate(7);
        }
        depth = 10
        image_index = 9;
    break;
    case 1://Falling
        if(y < initial_y+15){
            vsp = 3;
        } else {
            vsp = 0;
            with (oPlayer) {
        		if !free && (position_meeting(x-50,y+1,other) or position_meeting(x+50,y+1,other)) {
        			if((state == PS_LANDING_LAG or state == PS_HITSTUN_LAND or state == PS_PRATLAND or state == PS_LAND or state == PS_TECH_GROUND or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD) and state_timer == 2){
        			    other.plat_hp--;
        			    with(other){
    			            ice_generate(3)
    			        }
        			}
        		}
            }
            if(plat_hp = 0){
                state++;
            	state_timer = 0;
            	plat_hp = 5
            	ice_generate(7)
            	sound_play(asset_get("sfx_ice_shatter_big"))
            }
        }
    break;
    case 2://Going to break
        if(state_timer % 3 == 1){
            if(vsp > 0){
                vsp = -1
            } else {
                vsp = 1;
            }
        }
        if(state_timer == 60){
            state = 3;
            state_timer = 0;
            var dust_spawning = 0
            while(dust_spawning < 6){
                dust_spawning++;
                spawn_base_dust(x-70+dust_spawning*20,y+20,"smoke",0)
            }
            sound_play(asset_get("sfx_icehit_heavy1"))
            mask_index = asset_get("empty_sprite")
            image_alpha = 0
            y = initial_y
            image_index = 0;
            ice_generate(15);
        }
    break;
    case 3://Broken
        vsp = 0;
        if(state_timer >= 550){
            image_alpha = 1;
            image_index+=0.175;
            if(state_timer == 550){
                sound_play(asset_get("sfx_ice_dspecial_form"))
            }
        } else {
            if(plat_num == 1 and bananas_spawned = false and is_aether_stage() == true){
                with(obj_stage_article_platform){
                    if(state == 3 and state_timer < 550 and plat_num == 2){
                        var bananas_num = 1;
            			while(bananas_num < 20){
            				bananas_num++;
            				banana = instance_create(get_marker_x(11)+800, get_marker_y(11), "obj_stage_article", 2);
            				banana.image_index = bananas_num
            				banana.start_x = get_marker_x(11)+800
            				banana.start_y = get_marker_y(11)
            				banana.goto_x = get_marker_x(11) + bananas_num*-32
            				banana.goto_y = get_marker_y(11) + bananas_num*0
            				banana.state_timer -= bananas_num
            			}
            			var bananas_num2 = 1;
            			while(bananas_num2 < 20){
            				bananas_num2++;
            				banana = instance_create(get_marker_x(12)-800, get_marker_y(12), "obj_stage_article", 2);
            				banana.image_index = bananas_num2
            				banana.start_x = get_marker_x(12)-800
            				banana.start_y = get_marker_y(12)
            				banana.goto_x = get_marker_x(12) + bananas_num2*32
            				banana.goto_y = get_marker_y(12) + bananas_num2*0
            				banana.state_timer -= bananas_num2
            			}
            			sound_play(sound_get("bonus"))
            			other.bananas_spawned = true;
                    }
                }
            }
        }
        if(state_timer == 600){
            state = 0;
            state_timer = 0;
            mask_index = sprite_get("platform_coll_" + string(plat_num));
            bananas_spawned = false;
        }
    break;
}

#define spawn_base_dust
/// @param x
/// @param y
/// @param name
/// @param dir=0
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

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
    case "smoke": dlen = 20; dfx = 13; dfg = 2646; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define ice_generate
/// @param amount=5
/// @param {undefined} amount
var amount; if (argument_count > 0) amount = argument[0]; else amount = 5;

var ice_num = 0;
while(ice_num < amount){
	ice = create_hitbox(AT_TAUNT, 1, x+(random_func(ice_num+3, 80, true)-40), y+10);
	ice.sprite_index = sprite_get("ice");
	ice.image_index = random_func(ice_num, 10, true) + 1
	ice.img_spd = 0;
	ice.hsp = 0.8*(random_func(ice_num+1, 10, true ) - 5)
	ice.vsp = -1*(random_func(ice_num+2, 6, true)-2)
	ice.grav = 0.5
	ice.length = 15;
	ice.depth = 9
	ice_num++;
}