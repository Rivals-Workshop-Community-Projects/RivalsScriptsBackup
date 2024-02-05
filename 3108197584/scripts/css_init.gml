init_shader();

animation_timer = 0;
alpha_alt = 0;
prev_alt = get_player_color("alt_fix" in self? alt_fix: player);
anim_timer = 0;
init_shader_alts = 0;

alt_section = get_synced_var(player);

alt_name = [
    "Bounty hunter",
    "Artic hunter",
    "Depths hunter",
    "Camo hunter",
    "Space hunter",
    "Fused hunter",
    "Dreadful hunter",
    "Corrupted hunter",
    "Dark hunter",
    "Metallic hunter",
    "Bird hunter",
    "Descendant hunter",
    "War hunter",
    "Sieged hunter",
    "Got shot first",
    "Clankers hunter",
    "Racer hunter",
    "Abyssal hunter",
    "Tyrant hunter",
    "Machine hunter",
    "Perfected hunter",
    "Golden hunter",
    "Doom hunter",
    "Der hunter",
    "Biker hunter",
    "It's Nerf or Nothing",
    "Rights hunter",
    "Italic hunter",
    "Genesis hunter",
    "Hero hunter",
    "Robotic hunter",
    "VAE",
];


sprite_change_offset("unmapped_hud", 0, -2);
sprite_change_offset("corr_hud", 0, -2);
sprite_change_offset("unmapped_hurt", 0, -2);
sprite_change_offset("corr_hurt", 0, -2);