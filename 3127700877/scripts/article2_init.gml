sprite_index = sprite_get("fspecial_proj");
mask_index = sprite_get("fspecial_proj_mask");
image_index = 0;
state = 0;
state_timer = 0;
depth = -1;
can_be_grounded = true;
self_enhanced = false;
if "was_parried" not in self was_parried = false;
var offset = 57;
var right_check = position_meeting(x + offset, y + 2, asset_get("par_block")) || position_meeting(x + offset, y + 2, asset_get("par_jumpthrough"));
var left_check = position_meeting(x - offset, y + 2, asset_get("par_block")) || position_meeting(x - offset, y + 2, asset_get("par_jumpthrough"));
if(left_check xor right_check){
    if(!left_check){
        var _xx = x;
        while(!left_check && right_check){
            _xx++;
            left_check = position_meeting(_xx - offset, y + 2, asset_get("par_block")) || position_meeting(_xx - offset, y + 2, asset_get("par_jumpthrough"));
            right_check = position_meeting(_xx + offset, y + 2, asset_get("par_block")) || position_meeting(_xx + offset, y + 2, asset_get("par_jumpthrough"));
            if(_xx > get_stage_data(SD_RIGHT_BLASTZONE_X) || _xx < get_stage_data(SD_LEFT_BLASTZONE_X)) left_check = false;
        }
        x = _xx;
    } else if(!right_check){
        var _xx = x;
        while(!right_check && left_check){
            _xx--;
            right_check = position_meeting(_xx + offset, y + 2, asset_get("par_block")) || position_meeting(_xx + offset, y + 2, asset_get("par_jumpthrough"));
            left_check = position_meeting(_xx - offset, y + 2, asset_get("par_block")) || position_meeting(_xx - offset, y + 2, asset_get("par_jumpthrough"));
            if(_xx > get_stage_data(SD_RIGHT_BLASTZONE_X) || _xx < get_stage_data(SD_LEFT_BLASTZONE_X)) right_check = false;
        }
        x = _xx;
    }
}
if(!has_rune("H") && instance_exists(player_id.sludge_puddle_id) && point_distance(x, y, x, player_id.sludge_puddle_id.y) < 2 && point_distance(x, y, player_id.sludge_puddle_id.x, y) <= 64){
    self_enhanced = true;
    player_id.sludge_puddle_id.state = 69;
    player_id.sludge_puddle_id.state_timer = 0;
    player_id.sludge_puddle_id = noone;
    sound_play(asset_get("sfx_orca_absorb"));
}
if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_FSPECIAL){
    water_sound = sound_play(asset_get("sfx_orcane_water_loop"), true, false, true, .6);
    sound_play(asset_get("sfx_swish_heavy"), false, false, true, .6);
}
if(has_rune("H")) self_enhanced = true;