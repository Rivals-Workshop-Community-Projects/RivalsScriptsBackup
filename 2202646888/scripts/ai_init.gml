//ai_init - setting the basic AI attack behaviors

far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_DSPECIAL;

far_up_attacks[0] = AT_USTRONG;
far_up_attacks[1] = AT_DAIR;
far_up_attacks[2] = AT_DSPECIAL;

far_side_attacks[0] = AT_DATTACK;
far_side_attacks[1] = AT_FSTRONG;
far_side_attacks[2] = AT_FSPECIAL;

mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSPECIAL;
mid_side_attacks[3] = AT_DSPECIAL;
mid_side_attacks[4] = AT_FAIR;
mid_side_attacks[5] = AT_NSPECIAL;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_NAIR;

close_down_attacks[0] = AT_DAIR;
close_down_attacks[1] = AT_NAIR;
close_down_attacks[2] = AT_DTILT;
close_down_attacks[3] = AT_TAUNT;
close_down_attacks[4] = AT_DSPECIAL;

close_side_attacks[0] = AT_FTILT; 
close_side_attacks[1] = AT_FSTRONG;
close_side_attacks[2] = AT_NAIR;
close_side_attacks[3] = AT_UAIR;
close_side_attacks[4] = AT_DSTRONG;
close_side_attacks[5] = AT_FSPECIAL;
close_side_attacks[6] = AT_DTILT;


neutral_attacks[0] = AT_NAIR;
neutral_attacks[1] = AT_DATTACK;
neutral_attacks[2] = AT_NSPECIAL;
neutral_attacks[3] = AT_TAUNT;

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

fspecial_followup_timer = 0
fspecial_hit = false;

funny_walkturn = 1;

ai_should_hitfall = false

