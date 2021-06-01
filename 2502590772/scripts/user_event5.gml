//user_event5.gml - spawn a baton.
//called in attack_update.gml -> nspecial, and update.gml - before-match nspecial.

if (!instance_exists(baton_article_id) && !custom_clone && instance_exists(teammate_player_id)) {
	//have the master player spawn the article
	with (master_player_id) {
		var baton = instance_create(x + other.spr_dir * 10, y - 80, "obj_article1");
		baton.sending_unit_id = other;
		baton.receiving_unit_id = other.teammate_player_id;
		baton.spr_dir = other.spr_dir;
		
		other.baton_article_id = baton;
	}
}