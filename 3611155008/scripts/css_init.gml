init_shader_alts = get_player_color(player);

sprite_change_offset("hud", 0, -2);
sprite_change_offset("corr_hud", 0, -2);
sprite_change_offset("hud_hurt", 0, -2);
sprite_change_offset("corr_hud_hurt", 0, -2);

animation_timer = 0;
alpha_alt = 0;
prev_alt = get_player_color("alt_fix" in self? alt_fix: player);
anim_timer = 0;
init_shader_alts = 0;

alt_name = [
	"The Sol of Innovation",
	"The Sol of Loyalty",
	"The Sol of Equality",
	"The Sol of Legacy",
	"The Sol of Discipline",
	"The Sol of Benevolence",
	"The Sol of Integrity",
	"The Sol of Selflessness",
	"The Sol of Insight",
	"The Sol of Knowledge",
	"The Renovated Sol",
	"The Young Apeman",
	"The Original Sol",
	"The Sol's Guard",
	"The Artist Machine",
	"The Sturdy Apeman",
	"The Solarian That Never"+chr(10)+"Died Actually",
	"The Corrupted Innovator",
	"The Child of Void",
	"The One-Eyed Lotus",
	"The Alien Sol",
	"The Dissatisfied Sol",
	"The Metal Clawed Sol",
	"The Banished Sol",
	"The Sol in the Woods",
	"The Sol of College",
	"The Sol of Corruption",
	"The Sol of Redemption",
	"a",
	"a",
	"a",
	"a",
];