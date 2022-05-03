if(my_hitboxID.attack == AT_FSPECIAL){
    var hfx = spawn_hit_fx(my_hitboxID.x+spr_dir*24, my_hitboxID.y-4, hfx_rin_slash_front);
    hfx.depth = depth-1;
    hfx.spr_dir = -spr_dir;
} else if (my_hitboxID.attack == AT_DAIR){
    var hfx = spawn_hit_fx(x, y-40, hfx_dair);
    hfx.depth = depth-1;
} else if(my_hitboxID.attack == AT_FTILT and my_hitboxID.hbox_num < 3){
    hit_player_obj.x = lerp(floor(hit_player_obj.x), my_hitboxID.x, .15);
    hit_player_obj.y = lerp(floor(hit_player_obj.y), my_hitboxID.y, .1);
}


switch(my_hitboxID.attack){
    case AT_FSPECIAL:
    /*
        var wisp = instance_create(hit_player_obj.x, hit_player_obj.y- hit_player_obj.char_height/2, "obj_article1");
        wisp.hsp = hsp;
        wisp.vsp = vsp;*/
        break;
    /*case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 6){
            var wisp = instance_create(hit_player_obj.x, hit_player_obj.y- hit_player_obj.char_height/2, "obj_article1");
            wisp.hsp = -hit_player_obj.hsp;
            wisp.vsp = -hit_player_obj.vsp;
        }
        break:
        */
    case AT_NAIR:
        hit_player_obj.x = floor(lerp(floor(hit_player_obj.x), x, .15));
        hit_player_obj.y = floor(lerp(floor(hit_player_obj.y), y-32, .15));
        break;
    case AT_BAIR:
        hit_player_obj.x = floor(lerp(floor(hit_player_obj.x), floor(my_hitboxID.x), .25));
        hit_player_obj.y = floor(lerp(floor(hit_player_obj.y), floor(my_hitboxID.y+20), .25));
        break;
    case AT_NSPECIAL:
        if(my_hitboxID.hbox_num == 2){
            old_vsp = 0;
            old_hsp = 0;
            hit_player_obj.x = floor(lerp(floor(hit_player_obj.x), floor(my_hitboxID.x+spr_dir*20), .4));
            hit_player_obj.y = floor(lerp(floor(hit_player_obj.y), floor(my_hitboxID.y+28), .7));
  
        } else if (my_hitboxID.hbox_num == 4 and my_hitboxID.player == player){
            wisp = instance_create(my_hitboxID.x, my_hitboxID.y+12, "obj_article1");
            wisp.hsp = my_hitboxID.hsp*2;
            sound_play(asset_get("sfx_ori_energyhit_weak"), 0, noone, 1, .9);
            
        }
    
        //var wisp = instance_create(hit_player_obj.x, hit_player_obj.y- hit_player_obj.char_height/2, "obj_article1");
        //wisp.hsp = hsp;
        //wisp.vsp = vsp;
        break;
    
    
}