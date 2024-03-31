//death.gml
k_combo = 0;
k_combo_timer = 0;
k_combo_anim_timer = 0;
k_finish_timer = 0;
can_dspec = true;
adrenaline_timer = 0;
dthrows = 0;
uthrows = 0;
fthrows = 0;
k_combo_perm = false;

if(instance_exists(deathring) && !deathring.dissipate){
    for(var i = 0; i < max_motes; ++i){
        if(mote_list[i] != 0){
            mote_list[i, 0] = MOTE_DIE;
        }
    }
    deathring.transfer = true;
    deathring.consume = true;
}

with(oPlayer){
    if(variable_instance_exists(self, "poison_applier") && poison_applier == other.player){
        k_ring_debuff = 0;
        k_ring_debuff_hits = 0
    }
}