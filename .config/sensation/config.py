import subprocess
subprocess.call('setxkbmap us dvorak-intl', shell=True)

mod_1 = "KEY_3"

mod_2 = "KEY_2"
mod_3 = "KEY_1"
mod_4 = "KEY_4"

main_mode = [
    [[mod_2], ["@fn2"]],
    [[mod_2], ["@fn2"]],
    [[mod_3], ["@fn3"]],
    [[mod_3, "KEY_N"], [">xdotool key Tab"]],
    [["KEY_LEFTBRACE"], ["@fn2"]],
    [[mod_2], ["KEY_LEFTSHIFT"]],
    [[mod_1], ["@fn1"]],
    [["SHIFT_LOCK", "KEY_A"], ["togglePowermode[]"]],
    [["TAB"], ["ALT"]],
    [["KEY_MENU"], ["ALTGR"]],
    # [["KEY_LEFTBRACE"], ["@fn1"]],
    [["KEY_APOSTROPHE"], ["KEY_RIGHTSHIFT"]],

    [["KEY_TAB"], ["KEY_LEFTMETA"]],

    [['KEY_GRAVE'],  ["KEY_LEFTCTRL"]],
    [[mod_3, "KEY_M"], ["KEY_1"]],
    [[mod_3, "KEY_COMMA"], ["KEY_2"]],
    [[mod_3, "KEY_DOT"], ["KEY_3"]],
    [[mod_3, "KEY_J"], ["KEY_4"]],
    [[mod_3, "KEY_K"], ["KEY_5"]],
    [[mod_3, "KEY_L"], ["KEY_6"]],
    [[mod_3, "KEY_U"], ["KEY_7"]],
    [[mod_3, "KEY_I"], ["KEY_8"]],
    [[mod_3, "KEY_O"], ["KEY_9"]],
    [[mod_3, "KEY_SLASH"], [">echo hespohe"]],
    [[mod_3, "KEY_SEMICOLON"], ["KEY_0"]],


    [[mod_3, "KEY_W"], [">xdotool key --delay 0 ctrl+x"]],
    [[mod_3, "KEY_E"], [">xdotool key --delay 0 ctrl+c"]],
    [[mod_3, "KEY_R"], [">xdotool key --delay 0 ctrl+v"]],
    [[mod_3, "KEY_G"], [">xdotool key --delay 0 ctrl+g"]],
    [[mod_3, "KEY_D"], [">xdotool key --delay 0 ctrl+z"]],
    [[mod_3, "KEY_F"], [">xdotool key --delay 0 ctrl+y"]],
    [[mod_3, "KEY_S"], [">xdotool key --delay 0 ctrl+s"]],
    [[mod_3, "KEY_T"], [">xdotool key --delay 0 BackSpace"]],

    [[mod_3, "KEY_F2"], ["> xdotool keydown alt; xdotool key Tab; sleep 0.1; xdotool keyup alt"]],

    [[mod_1, "KEY_O"], ["KEY_UP"]],
    [[mod_1, "KEY_I"], ["KEY_DOWN"]],
    [[mod_1, "KEY_U"], ["KEY_LEFT"]],
    [[mod_1, "KEY_P"], ["KEY_RIGHT"]],
    [[mod_1, "KEY_J"], ["KEY_BACKSPACE"]],
    [[mod_1, "KEY_K"], ["KEY_ENTER"]],
    [[mod_1, "KEY_H"], ["KEY_ESC"]],


    [[mod_1, "KEY_9"], ["KEY_PAGEUP"]],
    [[mod_1, "KEY_8"], ["KEY_PAGEDOWN"]],

    [[mod_1, "KEY_7"], ["KEY_HOME"]],
    [[mod_1, "KEY_0"], ["KEY_END"]],

    [["KEY_LEFTBRACE", "KEY_S"], ["KEY_APOSTROPHE"]],
    [["KEY_LEFTBRACE", "KEY_A"], ["KEY_LEFTBRACE"]],
    [["KEY_LEFTBRACE", "KEY_D"], ["KEY_RIGHTBRACE"]],

    [["KEY_CAPSLOCK", "KEY_SEMICOLON"], ["KEY_CAPSLOCK"]],

    [[mod_1, "KEY_R","KEY_L"], [">xdotool key a"]],

    [[mod_1, "KEY_L"], ["KEY_MINUS"]],

    [[mod_1, "KEY_SEMICOLON"], ["KEY_EQUAL"]],
    [[mod_1, "KEY_DOT"], ["KEY_Q"]],
    [[mod_1, "KEY_M"], ["KEY_W"]],
    [[mod_1, "KEY_COMMA"], ["KEY_E"]],

    # [[mod_1, "KEY_9"], [">xdotool key parenleft"]],
    # [[mod_1, "KEY_0"], [">xdotool key parenright"]],

    # [["KEY_Q", "KEY_X"], [">xdotool key 'ctrl+x'"]],
    # [["KEY_Q", "KEY_S"], [">xdotool key --delay 0 --clearmodifiers ctrl+x"]],
    # [["KEY_Q", "KEY_D"], [">xdotool key --delay 0 --clearmodifiers ctrl+c"]],
    # [["KEY_Q", "KEY_F"], [">xdotool key --delay 0 --clearmodifiers ctrl+v"]],
    # [["KEY_Q", "KEY_V"], [">xdotool key --delay 0 --clearmodifiers ctrl+z"]],

    [[mod_1, "KEY_N"], [">xdotool key quoteright"]],
    [[mod_1, "KEY_SLASH"], [">xdotool key quotedbl"]],


    # [["KEY_6", "KEY_Q"], [">su - odoo -c 'google-chrome --remote-debugging-port=9222 &'"]], #
    [[mod_1, "KEY_RIGHTBRACE"], [">su - odoo -m -c 'flameshot gui -p /home/odoo/captures'"]],
    # [[mod_1, "KEY_RIGHTBRACE"], [">su - odoo -c 'terminator -x \'/usr/bin/flameshot gui &\''"]], #
    # [[mod_1, "KEY_RIGHTBRACE"], [">su - odoo -c 'terminator'"]], #
    # [[mod_1, "KEY_RIGHTBRACE"], [">gnome-screenshot -f ~/captures/$(date +%s).png"]], #
    [["KEY_SYSRQ"], ['>gnome-screenshot -f ~/captures/$(date +%s).png']],
    [["KEY_6", "KEY_J"], [">su - odoo -m -c 'echo agent: $SSH_AGENT_PID'"]],

    [[mod_1, "KEY_EQUAL"], ['!reload-config']],


    [["KEY_4"], ["@fn4"]],
    [["KEY_4", "KEY_M"], ['>setxkbmap us dvorak-intl']],
    [["KEY_4", "KEY_COMMA"], ['>setxkbmap us']],
    [["KEY_4", "KEY_DOT"], ['>setxkbmap be']],
    [["KEY_4", "KEY_P"], [">su - odoo -m -c 'killall trayer;trayer'"]], #

    # [["KEY_4", "KEY_DOT"], ['>setxkbmap fr']],
    [[mod_3, "KEY_H"], [">xdotool key asciitilde"]],

    [[mod_4, "KEY_J"], [">xdotool key U25B6"]],#▶
    [[mod_4, "KEY_K"], [">xdotool key U25C6"]],#◆
    [[mod_4, "KEY_L"], [">xdotool key U25C0"]],#◀
    [[mod_4, "KEY_N"], [">xdotool key U60"]], # `

    [[mod_1, "KEY_Q"], [">bash /home/odoo/scripts/goapower &"]],

    [["KEY_5"], ["@fn5"]],
    [["KEY_6"], ["@fn6"]],



    [["KEY_6", "KEY_Q"], [">su - odoo -m -c 'google-chrome --remote-debugging-port=9222 &'"]], #
    [["KEY_6", "KEY_W"], [">su - odoo -c 'firefox &'"]], #
    [["KEY_6", "KEY_U"], [">su - odoo -c 'spotify &'"]], #
    [["KEY_6", "KEY_G"], [">su - odoo -c '/snap/bin/discord &'"]], #
    [["KEY_6", "KEY_O"], [">su - odoo -c '/usr/bin/obs &'"]], #
    [["KEY_6", "KEY_A"], [">su - odoo -m -c '/home/odoo/app/blender-2.80/blender &'"]], #
    [["KEY_6", "KEY_S"], [">su - odoo -m -c '/home/odoo/bin/godot &'"]], #
    [["KEY_6", "KEY_D"], [">su - odoo -m -c '/usr/bin/inkscape &'"]], #
    [["KEY_6", "KEY_E"], [">su -m - odoo -c 'code -n --disable-gpu /home/odoo &'"]], #
    [["KEY_6", "KEY_K"], [">su -m - odoo -c 'kazam &'"]], #
    # [["KEY_6", "KEY_R"], [">su - odoo -c 'xdg-open $HOME &'"]], #
    [["KEY_6", "KEY_R"], [">su - odoo -c 'xdg-open $HOME &'"]], #
    [["KEY_6", "KEY_Y"], [">su - odoo -c 'slock &'"]], #
    [["KEY_6", "KEY_P"], [">su - odoo -c 'xkill &'"]], #
    [["KEY_6", "KEY_SLASH"], [">su - odoo -c 'flameshot gui &'"]], #
    [[mod_1, "KEY_LEFTBRACE"], [">sudo -u odoo -E -b gpick -p"]], #

    [["KEY_6", 'KEY_M'], [">su - odoo -c '/home/odoo/goamanc/bin/perso/xrandoff &'"]], #
    [["KEY_6", 'KEY_COMMA'], [">su - odoo -c '/home/odoo/goamanc/bin/perso/xrandon &'"]], #
    [["KEY_6", 'KEY_DOT'], [">su - odoo -c '/home/odoo/goamanc/bin/perso/xrand_screen2 &'"]], #

    [["KEY_6", "KEY_SEMICOLON"], [">su - odoo -c 'xdg-open /home/odoo/Downloads/agents.jpg'"]], #
    # [["KEY_6", "KEY_E"], [">su - odoo -c google-chrome"]], #
    # [["KEY_6", "KEY_R"], [">"]], #
    # [["KEY_6", "KEY_T"], [">"]], #
    # [["KEY_6", "KEY_Y"], [">"]], #

    # [[mod_1, "KEY_MINUS"], ['!reload-config']]
]

open_app_mode = [
]

# switch mode
# - "navigation"
# - "browsing"
edit_mode = [
    [["KEY_F1"], []],
    [["KEY_F2"], []],
    [["KEY_F3"], []],
    [["KEY_F4"], []],
    [["KEY_F5"], []],
    [["KEY_F6"], []],

    [["KEY_1"], []],
    [["KEY_2"], []],
    [["KEY_3"], []],
    [["KEY_4"], []],
    [["KEY_5"], []],
    [["KEY_6"], []],

    [["KEY_Q"], [">"]], #
    [["KEY_W"], [">"]], #
    [["KEY_E"], [">"]], #
    [["KEY_R"], [">"]], #
    [["KEY_T"], [">"]], #
    [["KEY_Y"], [">"]],

    [["KEY_A"], []], #
    [["KEY_S"], []], #
    [["KEY_D"], []], #
    [["KEY_F"], []], #
    [["KEY_G"], []], # enter
    [["KEY_H"], []], # backspace,delete

    [["KEY_102ND"], []], # command_bar
    [["KEY_Z"], []], # close/closeAll/quit/quitAll
    [["KEY_X"], []], # undo/redo
    [["KEY_C"], []], # copy/cut/paste
    [["KEY_V"], []],
    [["KEY_B"], []],
    [["KEY_N"], []],

    [["KEY_ESC"], []],

    [["KEY_GRAVE"], []],

    [["KEY_TAB"], []],
    [["KEY_CAPSLOCK"], []],
    [["KEY_LEFTSHIFT"], []],
    [["KEY_LEFTCTRL"], []],
    [["KEY_LEFTALT"], []],
    [["KEY_LEFTMETA"], []],

    [["KEY_SPACE"], []],
]

navigation_mode = [
    [["KEY_F1"], []],
    [["KEY_F2"], []],
    [["KEY_F3"], []],
    [["KEY_F4"], []],
    [["KEY_F5"], []],
    [["KEY_F6"], []],

    [["KEY_1"], []],
    [["KEY_2"], []],
    [["KEY_3"], []],
    [["KEY_4"], []],
    [["KEY_5"], []],
    [["KEY_6"], []],

    [["KEY_Q"], []], # sart
    [["KEY_W"], []], # pagedown
    [["KEY_E"], []], # pageup
    [["KEY_R"], []], # end
    [["KEY_T"], []],
    [["KEY_Y"], []],

    [["KEY_A"], []], # left
    [["KEY_S"], []], # bottom
    [["KEY_D"], []], # top
    [["KEY_F"], []], # right
    [["KEY_G"], []], # enter
    [["KEY_H"], []], # backspace,delete

    [["KEY_102ND"], []],
    [["KEY_Z"], []],
    [["KEY_X"], []],
    [["KEY_C"], []],
    [["KEY_V"], []],
    [["KEY_B"], []],
    [["KEY_N"], []],

    [["KEY_ESC"], []],

    [["KEY_GRAVE"], []],

    [["KEY_TAB"], []],
    [["KEY_CAPSLOCK"], []],
    [["KEY_LEFTSHIFT"], []],
    [["KEY_LEFTCTRL"], []],
    [["KEY_LEFTALT"], []],
    [["KEY_LEFTMETA"], []],

    [["KEY_SPACE"], []],

]



