nspec_charge = 0;
reset_attack_value(AT_NSPECIAL, AG_SPRITE);
reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);

if (my_hitboxID.attack == AT_FSPECIAL && (instance_exists(fspec_article) && fspec_article.state != PS_DEAD)) {
	fspec_article.state = PS_DEAD;
	fspec_article.state_timer = 0;
}