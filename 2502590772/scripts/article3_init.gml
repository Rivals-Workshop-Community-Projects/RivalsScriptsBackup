//article3_init
//article that draws dspecial's field range.


article_id = 0; //0 = field article
                //1 = explosion fx

disable_movement = true; //this article doesn't interact with anything

attached_to_unit_player_id = noone;


spr_charge[0] = sprite_get("fxchargeplus");
spr_charge[1] = sprite_get("fxchargeminus");

sfx_levelup = asset_get("sfx_absa_orb_missrelease");//sound_get("bair1")

sprite_index = spr_charge[0];
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
depth = -3.5;
visible = false;
state = 0;
state_timer = 0;