//

if("_ssnksprites" not in self) exit;

shader_start();
draw_sprite_ext(sprite_get("hud_indicator"), 0, temp_x + 140, temp_y - 30, 1, 1, 0, c_white, 1.0);

if(!bite()){
    temp_spr = sprite_get("hud_bstored");
    temp_set = b_storedatk;
}else{
    temp_spr = sprite_get("hud_stored"); //replace this sprite name with hud_stored to get the scratch-colored one, i just thought it didnt stand out as much
    temp_set = s_storedatk;
}

switch(temp_set){
    case 0:
        temp_spr = asset_get("empty_sprite");
        temp_fr = 0;
        break;
    
    case AT_JAB:
        temp_fr = 0;
        break;
    
    case AT_FTILT:
        temp_fr = 1;
        break;
    
    case AT_UTILT:
        temp_fr = 2;
        break;
    
    case AT_DTILT:
        temp_fr = 3;
        break;

    case AT_DATTACK:
        temp_fr = 4;
        break;

    case AT_FSTRONG:
        temp_fr = 5;
        break;
    
    case AT_USTRONG:
        temp_fr = 6;
        break;
    
    case AT_DSTRONG:
        temp_fr = 7;
        break;
        
    case AT_NAIR:
        temp_fr = 8;
        break;
    
    case AT_BAIR:
        temp_fr = 9;
        break;

    case AT_UAIR:
        temp_fr = 10;
        break;
    
    case AT_DAIR:
        temp_fr = 11;
        break;
    
    case AT_FAIR:
        temp_fr = 12;
        break;
    
    case AT_TAUNT:
        temp_fr = 13;
        break;
    
    case AT_TAUNT_2:
        temp_fr = 14;
        break;
}

draw_sprite_ext(temp_spr, temp_fr, temp_x + 146, temp_y - 22, 2, 2, 0, c_white, 1.0);

var dspec_frame = 2;
if(move_cooldown[AT_DSPECIAL] > 0){
    dspec_frame = 2;
}else{
    if(bite()){
        dspec_frame = 0;
    }else{
        dspec_frame = 1;
    }
}

draw_sprite_ext(sprite_get("dspec_cooldown"), dspec_frame, temp_x + 106, temp_y - 18, 2, 2, 0, c_white, 1.0);

shader_end();
/*
if(move_cooldown[AT_DSPECIAL] > 0){
    if(dspec_hud_cd == 0){
        draw_sprite_ext(sprite_get("dspec_hud_dark"), 0, temp_x + 180, temp_y - 10, 1, 1, 0, c_white, 0.7);
    }else{
        var height = 12 * (move_cooldown[AT_DSPECIAL]/dspec_hud_cd);
        draw_sprite_part_ext(sprite_get("dspec_hud_dark"), 0, 0, 12 - height, 16, height, temp_x + 180, temp_y + 2 - height, 1, 1, c_white, 0.7);
    }
}*/

#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;