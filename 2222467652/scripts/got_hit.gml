flutterjump -= enemy_hitboxID.kb_value;

if (orig_knock * -0.01 < hatdeathdrawvsp){
    hatdeathdrawvsp = orig_knock * -0.01;
}
if (hatdeathdrawheight > 0){
    hatdeathdrawheight = 0;
}

if (egg_stored){
    luigi_fireball = instance_create( x + spr_dir * 2, y - 30, "obj_article1" );
    luigi_fireball.hsp = spr_dir * 5;
    luigi_fireball.vsp = -7;
    luigi_fireball.bounces = 2;
    luigi_fireball.fireballfloat = false;
    fireballtogglecooldown = fireballtogglecooldown_full;
    if (down_down){
        luigi_fireball.vsp += 1;
    }
    if (up_down){
        luigi_fireball.vsp -= 1;
    }
    if (left_down){
        luigi_fireball.hsp -= 1;
    }
    if (right_down){
        luigi_fireball.hsp += 1;
    }
    if (egg_stored){
        luigi_fireball.hsp -= spr_dir * 2;
        luigi_fireball.vsp += 2;
        if (down_down){
            luigi_fireball.vsp += 1;
        }
        if (up_down){
            luigi_fireball.vsp -= 1;
        }
        if (left_down){
            luigi_fireball.hsp -= 2;
            if (spr_dir > 0){
                luigi_fireball.hsp += 1;
            }
        }
        if (right_down){
            luigi_fireball.hsp += 2;
            if (spr_dir < 0){
                luigi_fireball.hsp -= 1;
            }
        }
        luigi_fireball.bounces = egg_store_bounces;
        luigi_fireball.fireball_onfire = egg_store_fireball_onfire;
        luigi_fireball.fireball_onfire_id = egg_store_fireball_onfire_id;
        luigi_fireball.fireball_weakfire = egg_store_fireball_weakfire;
        luigi_fireball.fireball_firetimer = egg_store_fireball_firetimer;
        egg_stored = false;
    }
}