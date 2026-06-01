// death.gml

// play stuff on death here

// reset nspecial stuff
move_cooldown[AT_NSPECIAL] = 0;
sd_card_number = 1;
holding_sd_card = false;
held_sd_card_num = -1;
sd_card_num_proj_spawn = -1;

// KILL operators
if (instance_exists(fspec_article_add)){
	fspec_article_add.should_die = true;
}

if (instance_exists(fspec_article_sub)){
	fspec_article_sub.should_die = true;
}

if (instance_exists(fspec_article_mlt)){
	fspec_article_mlt.should_die = true;
}

if (instance_exists(fspec_article_dvd)){
	fspec_article_dvd.should_die = true;
}