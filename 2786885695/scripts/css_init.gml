//css_init
alt_total = 24;

alt_cur = 0;
alt_prev = 0;
css_anim_time = 0;

//icons for certain alts
icon_x_pos = x + 174;
icon_y_pos = y + 108;

//preview char
preview_x = floor(x+10);
preview_y = floor(y+10);


//ALT NAMES
//seasonal alt names
season_name = [
    "Shall we take a stroll?",
    "Sea Breeze Yuheng",
    "Icy Resurrection",
    "Holiday Lightning"
]

//alt names
alt_name = [
    "Driving Thunder",
    "Vigilant Yaksha",
    "Eclipsing Star",
    "Astral Reflection",
    "Dark Side of Dawn",
    "Plenilune Gaze",
    "Outlander (F)",
    "Outlander (M)",
    "Plane of Euthymia",
    "Alpha and Omega",
    "Swordmaster",
    "Through the Fire",
    "Flowering Night",
    "Endless Abyss", //has the abyss death effect
    "Early Access",
    "Opulent Splendor",
    season_name[get_match_setting(SET_SEASON)-1],
    "Infamous",
    "Ranked Gold", //has the shiny effect
    "Power of the Aegis",
    "Superstar Idol 01",
    "Unlimited Mage Works",
    "Elemental Guardian",
    "Baleful Stormstrider",
]

//ANIMATION VARS
sprite_change_offset("idle", 31, 94);
sprite_change_offset("idle_line", 31, 94);

preview_idle = sprite_get("idle");
preview_line = sprite_get("idle_line");
preview_scale = 1;
preview_anim_speed = 0.2; //the bigger the number, the slower the animation
preview_line_color = 0;


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
cur_lang = 0; //0 = mute | 1 = JP | 2 = EN | 3 = CN | 4 = KR
cur_voiceclip = [noone, noone];


//damage numbers settings
dmg_x = 170;
dmg_y = 72;

dmg_pos = [
    x + dmg_x,
    y + dmg_y,
    x + dmg_x + sprite_get_width(sprite_get("hud_damage")),
    y + dmg_y + sprite_get_height(sprite_get("hud_damage"))
];

dmg_button_state = 0; //0 = normal | 1 = hover | 2 = press
dmg_nums_active = true;



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




//save voice/damage numbers data
//if keqing is reloaded it will refresh the values, otherwise it will keep them
synced_vars = [cur_lang, dmg_nums_active];
if (get_synced_var(player) != 16 && !init)
{
    for (var i = 0; i < 2; i++) synced_vars[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
    cur_lang = synced_vars[0];
    dmg_nums_active = synced_vars[1];
}
else set_synced_var(player, 16);