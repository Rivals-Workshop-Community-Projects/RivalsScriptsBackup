init_shader();

animation_timer = 0;
alpha_alt = 0;
prev_alt = get_player_color("alt_fix" in self? alt_fix: player);
anim_timer = 0;
init_shader_alts = 0;

alt_section = get_synced_var(player);

alt_name = [
    "Maepul",
	"Blue",
	"Red",
	"Green",
	"Monochrome",
	"Pink",
	"Abyss",
	"Early Access",
	"Father",
	"Mom",
	"That bitch...",
	"Stinker",
	"Monk",
	"Yellow",
	"Rubium",
	"Prideful",
	"Komato Assassin",
	"Zero Rival Plan",
	"Glow In The Dark",
	"Dune Rider",
	"Brand New Animal",
	"Domesticated Ingot"+chr(10)+"(MatchesDraco)",
	"Future Slayer"+chr(10)+"(VVizard)",
	"Relentless Hunter"+chr(10)+"(VAE)",
	"Samsara",
];


sprite_change_offset("unmapped_hud", 0, -2);
sprite_change_offset("corr_hud", 0, -2);
sprite_change_offset("unmapped_hurt", 0, -2);
sprite_change_offset("corr_hurt", 0, -2);