//css_init.gml

msg_persistence = noone;

set_num_alts(); //see colors.gml

msg_yellow_mode = false;
msg_stage_stable = (get_synced_var(player) & 0x04) > 0;
//sensitive zone
button_anim_timer = 99;
button_highlight_timer = 0;
button_highlighted = false;


msg_error_active = false;
var nl = chr(0x0A);
msg_error_message = nl;
msg_error_timer = 0;

if (current_time % 3 == 0) && (room == asset_get("network_char_select"))
{
    msg_error_active = true;

    var rng_msgs = [];
    var lang = get_local_setting(SET_LANGUAGE);
    if ((current_time >> 1) % 7 == 0) lang = 99;
    switch (lang)
    {
        case 0: //EN
           rng_msgs = [
              "- Error -"+nl+"Your opponent doesn't have the same version of this item installed.", //4181
              "- Error -"+nl+"Replay data is corrupted.", //240
              "- Error -"+nl+"Item URL is incorrect.", //4182
              "- Error -"+nl+"No item is loaded.", //4183
              "- Error -"+nl+"Steam Matchmaking is unavailable.", //220
              "- Error -"+nl+"Failed to log in to online service.",  //4221
              "- Error -"+nl+"No items to play online." //4187
           ];
        break;
        case 1: //JP
           rng_msgs = [
              "* エラー *"+nl+"このアイテムの バージョンが たいせんあいてと いっちしません。",
              "* エラー *"+nl+"リプレイデータが はそんしています。",
              "* エラー *"+nl+"アイテムの URLが ふせいです。",
              "* エラー *"+nl+"アイテムが よみこまれて いません。"
              "* エラー *"+nl+"STEAMマッチメイキングが りようできません。",
              "* エラー *"+nl+"オンラインサービスに せつぞくできません。",
              "* エラー *"+nl+"オンラインで プレイできる アイテムが ありません。"
           ];
        break;
        case 2: //RU
           rng_msgs = [
              "- Ошибка -"+nl+"У вашего противника не установлена эта версия предмета.",
              "- Ошибка -"+nl+"Запись повреждена.",
              "- Ошибка -"+nl+"URL предмета неверен.",
              "- Ошибка -"+nl+"Предмет не загружен.",
              "- Ошибка -"+nl+"Мультиплеерные функции Steam недоступны.",
              "- Ошибка -"+nl+"Не удалось подключиться к серверу.",
              "- Ошибка -"+nl+"У вас нет синхронизированных предметов."
           ];
        break;
        default: //???
           rng_msgs = [
              "- Error -"+nl+"Your opponent doesn't have th3_)!$せんあいてと いっちしません。",
              " // (generic message for errors)"+nl+"220 = ",
              "VIEW FRIENDS LEADERBOARD",
              "@429",
              "* エラー *"+nl+"アイテムの URLが ふせいです。",
              "ZZWZZnZZgZZ"+nl+"ZZyZZiZZsZZnZZhZZuZZoZZeZZdZZeZZoZZ ZZiZZ ZZeZZoZZsZZpZZtZZ ZZ ZZeZZ ZZrZZhZZ ZZlZZbZZaZZoZZtZZaZZyZZeZZtZZ.",
              "- Error -"+nl+"Bad Response due to a Parse failure, missing field, etc.",
              "- Warning -"+nl+"Once deleted, the stage data cannot be recovered. Really delete the stage?",
              "BANANA ERROR #5!"+nl+"Error de desbordamiento del platano!"
              "ERR://23¤Y%/"
           ];
        break;
    }

    var rng_msg = (current_time >> 3) % 12;
    if (rng_msg >= array_length(rng_msgs)) rng_msg = 0;
    msg_error_message = rng_msgs[rng_msg];
    sound_play(asset_get("mfx_notice"));
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define set_num_alts // Version 0
    var num_colors = 15;
    with asset_get("obj_article3")
        if ((num == "missingno") && master.achievement_saw_matrix)
            num_colors = 16;
    set_num_palettes(num_colors);

    return num_colors;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion