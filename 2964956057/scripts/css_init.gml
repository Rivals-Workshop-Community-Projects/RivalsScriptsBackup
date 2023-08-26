temp_x = x;
temp_y = y;

set_ui_element(UI_CHARSELECT, sprite_get("charselect"));

num_alts = 24;
var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
champ_cur = 0;
prev_champ = champ_cur;
runes_mode = get_match_setting(SET_RUNES) == true? -16:0;
prev_alt = 0;  

customizer_active = 0;

hovering = -1;
hovering_timer = 0;

customizer_timer = 0;
customizer_closing = -1;

previews = [ // sprite, animation speed
    [sprite_get("idle"), 1/6],
    [sprite_get("dash"), 1/4],
    [sprite_get("taunt"), 1/3],
    [sprite_get("taunt2"), 1/4],
    [sprite_get("fair"), 1/4],
    [sprite_get("bair"), 1/4]
];
preview_animation = 0;
preview_frame = 0;

selected_slot = -1;

face_color = 1;
petals_color = 19;
stem_color = 6;
thorns_color = 3
soul_color = 3;
lefteye_color = 2;
righteye_color = 2;
mouth_color = 1;

custom_palette = face_color * 100000000 + petals_color * 1000000 + stem_color * 100000 + thorns_color * 10000 + soul_color * 1000 + lefteye_color * 100 + righteye_color * 10 + mouth_color;
set_synced_var(player, custom_palette);
custom_palette_max = 10;

alpher = 1;

alpher_alt = 2;

sprite_change_offset("idle", 28, 36, true);
sprite_change_offset("dash", 12, 23, true);
sprite_change_offset("taunt", 28, 36, true);
sprite_change_offset("taunt2", 28, 36, true);
sprite_change_offset("fair", 42, 79, true);
sprite_change_offset("bair", 38, 36, true);