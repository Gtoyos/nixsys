#Alacritty terminal configuration (Home-manager)
{ configs, pkgs, ...}:

{
    programs.alacritty = {
        enable = true;
        settings = {
            
            shell.program = "/home/cardinal/.nix-profile/bin/fish";

            window.dimensions = {
                columns = 0;
                lines = 0;
            }; 
            decorations = "full";
            scrolling.history = 900;
            scrolling.multiplier = 3;
            font = {
              normal.family = "Source Code Pro";
              normal.style = "Regular";
              bold.family = "Source Code Pro";
              size = 10.0;
              offset.x= 0;
              offset.y= 0;
              glyph_offset.x=0;
              glyph_offset.y=0;
            };
            draw_bold_text_with_bright_colors = false;

            # Base16 Atelier Lakeside - alacritty color config by Bram de Haan  
            colors = {
                primary = {
                    #background = "0x161b1d";
                    background = "0x11161a";
                    foreground = "0x7ea2b4";
                };
                cursor = {
                    text = "0x161b1d";
                    cursor = "0x7ea2b4";
                };
                normal = {
                    black = "0x161b1d";
                    red = "0xd22d72";
                    green = "0x568c3b";
                    yellow = "0x8a8a0f";
                    blue = "0x257fad";
                    magenta = "0x6b6bb8";
                    cyan = "0x2d8f6f";
                    white = "0x7ea2b4";
                };
                bright = {
                    black = "0x5a7b8c";
                    red = "0x935c25";
                    green = "0x1f292e";
                    yellow = "0x516d7b";
                    blue = "0x7195a8";
                    magenta = "0xc1e4f6";
                    cyan = "0xb72dd2";
                    white = "0xebf8ff";
                };
            };

            key_bindings = [
                {
                    key = "C";
                    mods = "Control";
                    action = "Copy";
                }
                {
                    key = "V";
                    mods = "Control";
                    action = "Paste";
                }
            ];
            cursor.style = "Underline";
        };
    };
}
