// death.gml

fusion = false;
bodyless = false;
bodyloss = false;

//死んだら体を消す
headdie = true;

//チャージ初期化
NBcharge = 0;
reset_window_value(AT_NSPECIAL,2,AG_WINDOW_ANIM_FRAME_START);
reset_hitbox_value(AT_NSPECIAL,2,HG_WINDOW);
reset_hitbox_value(AT_NSPECIAL,3,HG_WINDOW);