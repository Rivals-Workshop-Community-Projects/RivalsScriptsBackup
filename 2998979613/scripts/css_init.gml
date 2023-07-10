alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
onlpl = "alt_fix" in self? alt_fix: player;
cssframes = 0;
voiced = get_synced_var(onlpl);
voicebutton = voiced * 3;
voicebuttoncurrent =  voiced * 3;
prev_alt = alt_cur;

alt_names = [
    "Guardian stalker",
    "Battle tested",
    "Decayed",
    "Time traveler",
    "Miasma",
    "Mobile identifier",
    "Omnidroid",
    "Construct",
    "Atomic throne",
    "Photoshopped",
    "Castle's guardian",
    "Turret",
    "BIG ZAM",
    "Golurk",
    "VAE"
];

offsets = [40, 100];
text_offset = 0;

css_angles = [0, 0, 30];
randrot_cool = 0;
mid_angle_target = 0;

spr_alpha = 6;
txt_alpha = 6;


sprite_change_offset("body_0", 39, -15);
sprite_change_offset("body_1", 39, 0);
sprite_change_offset("body_2", 39, 34);
sprite_change_offset("body_2b", 39, 34);
sprite_change_offset("css_legs", 126, -30);
sprite_change_offset("hud", 0, -2);
sprite_change_offset("hud_corrected", 0, -2);
sprite_change_offset("offscreen", 17, 17);
sprite_change_offset("offscreen_corrected", 17, 17);

//template
cpu_hover_init(); //put this anywhere above your #defines

//as always, #defines go at the bottom of the script.
#define cpu_hover_init()
cpu_hovering_player = -1; //the current player that's hovering the cpu. -1 for nobody
cpu_is_hovered = -1; //whether the cpu is hovered currently.
cpu_hover_time = 0; //the timer for the cpu hover indicator
cpu_color_swap_time = 0; //the timer for the cpu indicator's smooth color swap
cpuh_prev_color = c_gray;
cpuh_new_color = c_gray;

var c = [-4,-4,-4,-4,-4];
with (asset_get("cs_playercursor_obj")) { //this sets the cursor array
    c[get_instance_player(self)] = self;
}
cursors = c;

x = floor(x); //hehe
y = floor(y);
plate_bounds = [x,y,x+219,y+207]; //boundaries of the player plate
portrait_bounds = [x+10,y+10,x+210,y+151]; //boundaries of the player portrait. unused but useful
cpu_hover_sprite = sprite_get("cpu_controllingplayer_outline"); //the outline sprite.