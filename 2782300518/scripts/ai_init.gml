//ai_init - setting the basic AI attack behaviors

distX=0;
distY=0;
posX=0;
posY=0;
isAI=true;

if (temp_level < 7)
{
    far_down_attacks[0] = AT_DAIR;

    far_side_attacks[0] = AT_DATTACK;

    mid_side_attacks[0] = AT_DATTACK;

    close_up_attacks[0] = AT_USTRONG;
    close_up_attacks[1] = AT_UAIR;
    close_up_attacks[2] = AT_UTILT;
    close_up_attacks[3] = AT_NAIR;
    close_up_attacks[4] = AT_NSPECIAL;
    close_up_attacks[5] = AT_USPECIAL;

    close_down_attacks[0] = AT_DSTRONG;
    close_down_attacks[1] = AT_DAIR;

    close_side_attacks[0] = AT_JAB;
    close_side_attacks[1] = AT_FTILT;
    close_side_attacks[2] = AT_DTILT;
    close_side_attacks[3] = AT_NSPECIAL;
    close_side_attacks[4] = AT_FSTRONG;
    close_side_attacks[5] = AT_DSTRONG;

    neutral_attacks[0] = AT_JAB;
    neutral_attacks[1] = AT_NAIR;
    neutral_attacks[2] = AT_FAIR;
    neutral_attacks[3] = AT_UAIR;
    neutral_attacks[4] = AT_NSPECIAL;
    neutral_attacks[5] = AT_BAIR;
}

xtrag = 0;
ytrag = 0;
new_x = 0;
new_y = 0;
current_prediction = 0;
current_prediction_target = 0;
stopped_at = -1;
stopped_at_target = -1;
// new_target_vsp = 0;
// new_vsp = 0;
fprediction = 0;

hurtboxWidth = 0;

prediction_array = array_create(32, 0);
prediction_array_target = array_create(32, 0);
for(var i = 0; i < array_length_1d(prediction_array); i++){
    prediction_array[@i] = [0, 0, 0, 0];
    prediction_array_target[@i] = [0, 0, 0, 0];
}
is_ai = true;
targetbusy = false;
stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);
top_blastzone = get_stage_data(SD_TOP_BLASTZONE);
chasing = 0;
to_boost = 0;
strongPercent = 0;
chosenAttack = 0;
stall = 0;
camping = 0;
do_not_attack = false;
attacking = false;
wait_time = 0;
wavelanding = false;
old_ai_target = noone;
//Determine AI attack time by CPU level
xdist = 0;
ydist = 0;
random_direction = 0;
predict = false;
let_parry = false;
rangedtimer = 300;
inactive = 0;
plat_asset = asset_get("jumpthrough_32_obj");
solid_asset = asset_get("par_block");
fs_ai_attempt_use = false;

DACUS_timer = 0
can_DACUS = false;