
draw_self();

draw_set_font(fnt_text);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, "Game Over");

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 120, "Score: " + string(global.money))