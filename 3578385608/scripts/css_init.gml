init_shader();

animation_timer = 0;
alpha_alt = 0;
prev_alt = get_player_color("alt_fix" in self? alt_fix: player);
anim_timer = 0;
init_shader_alts = 0;

alt_name = [
    "Walter White",
    "Hazmat Suit",
    "Jesse Pinkman",
    "Saul Goodman",
    "Gus Fring",
    "Mike Ehrmantraut",
    "Gale Boetticher",
    "Hector Salamanca",
    "Skyler White",
    "Walter Junior",
    "Walter Red",
    "Walter Green",
    "Walter Blue",
    "Walter Whiter",
    "Walter Gray",
    "Walter Black",
    "altname16",
    "altname17",
    "altname18",
    "altname19",
    "altname20",
    "altname21",
    "altname22",
    "altname23",
    "altname24",
    "altname25",
    "altname26",
    "altname27",
    "altname28",
    "altname29",
    "altname30",
    "altname31",
];


sprite_change_offset("hud", 0, -2);
sprite_change_offset("corr_hud", 0, -2);
sprite_change_offset("hud_hurt", 0, -2);
sprite_change_offset("corr_hurt", 0, -2);