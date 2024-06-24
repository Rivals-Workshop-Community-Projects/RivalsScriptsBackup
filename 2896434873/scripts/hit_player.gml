switch (my_hitboxID.attack)
{
    case AT_DSPECIAL:
        if my_hitboxID.hbox_num == 1 {
	        hit_player_obj.fspecial_curse_timer = 240;
	        hit_player_obj.fspecial_curse_player = id;
        }
        else {
    		with scapegoat_obj {
    		    if (!dspecial_lit and (other.hit_player_obj.fspecial_curse_player != id) ) or state == PS_BURIED break;
    		    
    		    print("fuck")
    		    state = PS_BURIED;
    		    state_timer = 0;
				sprite_index = asset_get("empty_sprite");
				create_hitbox(AT_DSPECIAL, 1, x, y-24);
				spawn_hit_fx(x,y-24,player_id.uspecialburst_vfx);
				sound_play(asset_get("sfx_ori_ustrong_launch"))
				sound_play(asset_get("sfx_hod_nspecial"),false,noone,.9)
    		}
        }
    break;
    case AT_USPECIAL:
        switch my_hitboxID.hbox_num
        {
            case 1:
                hit_player_obj.fspecial_curse_timer = 120;
                hit_player_obj.fspecial_curse_player = id;
            break;
            //detonate
            case 2:
                if (instance_exists(my_hitboxID.uspecial_scapegoat))
                {
                    //print("DETONATE - " + string(my_hitboxID.uspecial_scapegoat))
                    my_hitboxID.uspecial_scapegoat.state = PS_ATTACK_AIR;
                    my_hitboxID.uspecial_scapegoat.image_index = 0;
                }
            break;
            case 3:
                if (instance_exists(uspecial_proj))
                {
                    //print("DETONATE - " + string(my_hitboxID.uspecial_scapegoat))
                    uspecial_proj.state = uspecial_proj.free ? PS_ATTACK_AIR : PS_ATTACK_GROUND;
                    uspecial_proj.image_index = 0;
                }
            break;
        }
    break;
    case AT_FSPECIAL:
        if my_hitboxID.hbox_num == 2
        {
            hit_player_obj.fspecial_curse_player = id;
            hit_player_obj.fspecial_curse_timer = 240;
        }
    break;
    case AT_BAIR:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_hod_dstrong_hit"),false,noone, 0.4,1.0)
            sound_play(asset_get("sfx_blow_heavy2"),false,noone, 0.6,1.1)
        }
    case AT_DATTACK:
        if my_hitboxID.hbox_num == 2
        {
            var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), small_hfx);
            fx.depth = hit_player_obj.depth - 0.5;
        }
    break;
    case AT_DAIR:
    if my_hitboxID.hbox_num == 1
        {
            var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), firework_hfx);
            fx.depth = hit_player_obj.depth - 1;
        }
        break;
    case AT_USTRONG:
    if my_hitboxID.hbox_num == 2
        {
            hit_player_obj.fspecial_curse_player = id;
            hit_player_obj.fspecial_curse_timer = 120;
        }
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 1
        {
            hit_player_obj.fspecial_curse_player = id;
            hit_player_obj.fspecial_curse_timer = 180;
            var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), firework_hfx);
            fx.depth = hit_player_obj.depth - 0.1;
        }
        break; 
    case AT_DSTRONG:
    if my_hitboxID.hbox_num == 2
        {
            hit_player_obj.fspecial_curse_player = id;
            hit_player_obj.fspecial_curse_timer = 180;
            var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), firework_hfx);
            fx.depth = hit_player_obj.depth - 0.1;
        }
        break; 
        
}