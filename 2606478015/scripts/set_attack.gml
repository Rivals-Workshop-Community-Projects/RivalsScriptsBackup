if(pickup_able == true && instance_exists(gyro)){
    if(gyro.gyro_pickup){
        if(attack == AT_FAIR || attack == AT_FSTRONG || attack == AT_FTILT || attack == AT_JAB || attack == AT_NAIR){
            attack = AT_FTHROW
        }else if(attack == AT_BAIR){
            attack = AT_FTHROW
            spr_dir *= -1
        }else if(attack == AT_UAIR || attack == AT_USTRONG || attack == AT_UTILT){
            attack = AT_UTHROW
        }else if(attack == AT_DAIR || attack == AT_DSTRONG || attack == AT_DTILT){
            attack = AT_DTHROW
        }
    }
    if(special_pressed && state_cat == SC_GROUND_NEUTRAL || 
    special_pressed && SC_AIR_NEUTRAL){
            if(down_down){
                attack = AT_DSPECIAL
                window = 1
                window_timer = 0
                pickup_able = false
                gyro_charge = 8 + (gyro.gyro_spin_rate / 3)
                instance_destroy(gyro);
            }else if(gyro.state != 2 && joy_pad_idle){
                gyro_pickup = true
                sound_play(asset_get("sfx_zetter_shine"))
                gyro.state = 2
                gyro.state_timer = 0
                attack = AT_EXTRA_1
        }
    }
}