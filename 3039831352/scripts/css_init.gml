//css_init.gml

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);

alt_name = []; //refresh name array in case other characters use the same system

//ALT NAMES
//seasonal alt names
season_name[1] = "Marriage? NO WAY!";
season_name[2] = "Seaside Laze";
season_name[3] = "ILLEGAL INSTRUCTION 000E0XE0"; //lord X (illegal instruction screen)
season_name[4] = "Ice Cap Chill";

//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name[0] = "Blue Blur";
alt_name[1] = "Giant Talking Egg";      //eggman
alt_name[2] = "Lil' Bro";               //tails (super tails)
alt_name[3] = "Knucklehead";            //knux (hyper knuckles)
alt_name[4] = "Piko-Piko Panic";        //amy
alt_name[5] = "Big Drip";               //chaos (chaos chao)
alt_name[6] = "Faker";                  //shadow (super shadow)
alt_name[7] = "Jewel Thief";            //rouge                         //"Psychic Hegdehog";       //silver (super silver)
alt_name[8] = "Cute Rabbit";            //cream                         //"Her Highness";           //blaze (burning blaze)
alt_name[9] = "It Takes One Bad Day";   //scouge (super scourge)
alt_name[10] = "Console Clash";         //mario (fire mario)
alt_name[11] = "Electric Jester";       //spark
alt_name[12] = "Comet of Avalice";      //lilac
alt_name[13] = "Endless Abyss";
alt_name[14] = "Early Access";
alt_name[15] = "Loathsome Copy";
alt_name[16] = season_name[get_match_setting(SET_SEASON)];
alt_name[17] = "Infamous";
alt_name[18] = "Ranked Gold";           //gold (diamond)
alt_name[19] = "Blast Processing";      //sonic 1 (sonic 2 super sonic)
alt_name[20] = "False Chaos and Rage";  //dark sonic (dark super sonic)
alt_name[21] = "Scarlet Speedster";     //the flash
alt_name[22] = (current_day == 31 && current_month == 10) ? "It's him...?" : "It's him"; //snick (super snick)
alt_name[23] = "Sylvan Watcher";        //maypul
alt_name[24] = "Elemental Guardian";    //bar (theikos bar)
alt_name[25] = "Driving Thunder";       //keqing
alt_name[26] = "Youkai of Dusk";        //rumia
alt_name[27] = "Radical Team Player";   //player color

alt_cur = get_player_color(player);
alt_prev = get_player_color(player);
alt_total = array_length(alt_name);

set_ui_element(UI_CHARSELECT, asset_get("empty_sprite"));

//ANIMATION VARS
sprite_change_offset("idle", 23, 47);
sprite_change_offset("s_idle", 23, 47);

preview_scale = 2; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //"idle_anim_speed"

secret_active = false;

//CSS settings
press_delay = 0;

//language settings
lang_x = 170;
lang_y = 40;

lang_pos = [
    x + lang_x,
    y + lang_y,
    x + lang_x + sprite_get_width(sprite_get("hud_voice")),
    y + lang_y + sprite_get_height(sprite_get("hud_voice"))
];

lang_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_lang = 0; //0 = mute | 1 = EN | 2 = JP
cur_voiceclip = [noone, noone];


//super sonic alts toggle
spr_set_x = 10;
spr_set_y = 140;
spr_set_ex_offset = 0;

spr_set_pos = [
    x + spr_set_x,
    y + spr_set_y,
    x + spr_set_x + sprite_get_width(sprite_get("hud_superalt")),
    y + spr_set_y + sprite_get_height(sprite_get("hud_superalt"))
];

spr_set_button_state = 0; //0 = normal | 1 = hover | 2 = press
cur_spr_set = 0; //0 = normal form | 1 = super form
prev_spr_set = 0;
stored_spr_set = 0;
spr_set_button_available = true;


//CPU shenanigans by supersonic
cpu_hovering_player = -1;
cpu_is_hovered = -1;
cpu_hover_time = 0;
cpu_color_swap_time = 0;

cursors = [-4,-4,-4,-4,-4]
with (asset_get("cs_playercursor_obj")) {
    other.cursors[get_instance_player(self)] = self;
}
x = floor(x);
y = floor(y);
plate_bounds = [x,y,x+219,y+207];
portrait_bounds = [x+10,y+10,x+210,y+151];


//save data
synced_vars = [cur_lang, cur_spr_set];
if (get_synced_var((room == asset_get("network_char_select")) ? 0 : self.player) < 18 && (!init || room == asset_get("network_char_select")))
{
    var i = 0;
    repeat (array_length(synced_vars))
    {
        synced_vars[i] = (get_synced_var((room == 114) ? 0 : self.player) >> (i * 4)) & 0xf;
        i++;
    }

    cur_lang = synced_vars[0];
    cur_spr_set = synced_vars[1];
    stored_spr_set = cur_spr_set;
}
else set_synced_var((room == asset_get("network_char_select")) ? 0 : self.player, 0);