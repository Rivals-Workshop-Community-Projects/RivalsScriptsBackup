with (asset_get("oPlayer")) {
	if (amaya_venom && amaya_venom_id == other.id) {
		amaya_venom = false;
                amaya_venom_count = false;
	}
}

if (instance_exists(venombubble_ins))
{
    venombubble_ins.state = 5;
    venombubble_ins.image_index = 16+venombubble_ins.level*3;
    venombubble_ins.frame_update = 0;
}

move_cooldown[AT_NSPECIAL] = 0;

hadoken_charge = 0;