set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);//0 =接地のみ  1 =空中のみ  2 =接地または空中にできる
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 20);
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);//0 =崖で停止する  1 =崖から出る
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("headless_uspecial"));//攻撃に使用するスプライト
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_crouch_box"));//攻撃の当たり判定に使用するスプライト

//-----------------------------------------
//構え
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 14);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

//-----------------------------------------
//プロペラ
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 14);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 7);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);//0 =効果音がない   1 =効果音がある
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));//効果音のインデックス
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 1);//効果音が再生されるウィンドウ内のフレーム

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);//落下させる
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 9);//フレーム単位のウィンドウの継続時間
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);//ウィンドウの期間中に表示するアニメーションフレームの数
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);//ウィンドウが開始するアニメーションフレーム
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, .65);


