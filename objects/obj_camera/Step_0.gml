// === CONFIGURAÇÕES INICIAIS ===
var p1 = obj_mc;          // Jogador 1
var p2 = obj_sc;          // Jogador 2
var margem = 200;         // Margem de segurança nas bordas
var room_w = room_width;  // Largura total da fase
var view_w = camera_get_view_width(view_camera[0]); // Largura da view
var view_h = camera_get_view_height(view_camera[0]); // Altura da view

// === PEGA POSIÇÃO DOS DOIS JOGADORES ===
if (instance_exists(p1) && instance_exists(p2)) {
    var meio_x = (p1.x + p2.x) / 2; // Ponto central entre os dois
    var meio_y = (p1.y + p2.y) / 2;

    // === LIMITA CÂMERA DENTRO DA ROOM ===
    var cam_x = clamp(meio_x - view_w / 2, 0, room_w - view_w);
    var cam_y = clamp(meio_y - view_h / 2, 0, room_height - view_h);

    // === MOVE A CÂMERA SUAVEMENTE ===
    var atual_cam_x = camera_get_view_x(view_camera[0]);
    var atual_cam_y = camera_get_view_y(view_camera[0]);
    
    var suav = 0.1; // Quanto menor, mais suave (0.05 = lento / 1 = instantâneo)
    cam_x = lerp(atual_cam_x, cam_x, suav);
    cam_y = lerp(atual_cam_y, cam_y, suav);

    // === APLICA NA CÂMERA ===
    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}
