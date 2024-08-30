//if hit during Nspecial, reset Npsec charge
if (attack == AT_NSPECIAL && (state = PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && nspec_charge > 0){
	nspec_charge = 0;
}

if (state = PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && (instance_exists(fspec_article) && fspec_article.state != PS_DEAD) {
	fspec_article.state = PS_DEAD;
	fspec_article.state_timer = 0;
}

//if hit during pratfall, return uspec_first
if(!uspec_first){
	uspec_first = true;
}

if(move_cooldown[AT_DSPECIAL] > 0){
	move_cooldown[AT_DSPECIAL] = 0
}