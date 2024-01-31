// articleX_init.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/article_scripts.html#article-name-init-gml
// Runs when the article is created. Used to initialize variables.
// This script can be created for any article index (1, 2, 3, solid, and platform)

// Muno's article template: https://discord.com/channels/63722835520004096/611423483863367692/651800284875718658

sprite_index = sprite_get("dspecial_sludge");
mask_index = sprite_get("sludge_mask");
image_index = 0;
state = 0;
state_timer = 0;
depth = 0;
can_be_grounded = true;
total_lifetime = -8;
if "was_parried" not in self was_parried = false;
var offset = 64;
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
// if(player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_DSPECIAL){
//     sound_play(asset_get("sfx_frog_dstrong"), false, false, true, .9);
//     sound_play(asset_get("sfx_orcane_fspecial_pud"), false, false, true, .9);
//     sound_play(asset_get("sfx_waterhit_medium"), false, false, true, .9);
//     create_hitbox(AT_DSPECIAL, 1, x, y - 15);
// }