var spr_idle;
var spr_walking;

switch(global.jogador2) {
    case "henrique":
        spr_idle = spr_idle_henrique;
        spr_walking = spr_walking_henrique;
        break;
    case "lahecyo":
        spr_idle = spr_idle_lahecyo;
        spr_walking = spr_walking_lahecyo;
        break;
    case "lucas":
        spr_idle = spr_idle_lucas;
        spr_walking = spr_walking_lucas;
        break;
    case "tapety":
        spr_idle = spr_idle_tapety;
        spr_walking = spr_walking_tapety;
        break;
    case "matheus":
        spr_idle = spr_idle_matheus;
        spr_walking = spr_walking_matheus;
        break;
    case "jota":
        spr_idle = spr_idle_jota;
        spr_walking = spr_walking_jota;
        break;
}

if (keyboard_check(ord("D")) && keyboard_check(ord("A"))) {
    sprite_index = spr_idle;
} else {
    if (keyboard_check(ord("D"))) {
        if (!place_meeting(x + hspd, y, obj_wall)) {
            x += hspd;
            sprite_index = spr_walking;
        }
        image_xscale = 1;
    } else if (keyboard_check(ord("A"))) {
        if (!place_meeting(x - hspd, y, obj_wall)) {
            x -= hspd;
            sprite_index = spr_walking;
        }
        image_xscale = -1;
    } else {
        sprite_index = spr_idle;
    }
}
