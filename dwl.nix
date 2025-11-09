{
  pkgs,
  settings ? { },
}:
let
  lib = pkgs.lib;

  defaults = {
    environment = {
      XDG_CURRENT_DESKTOP = "wlroots";
    };

    autostart = [ ];

    general = {
      focus_follows_mouse = true;
      smart_borders = true;
      smart_gaps = false;
      border_width = 1;
    };

    appearance = {
      bar = {
        enable = true;
        position_top = true;
        padding = {
          horizontal = 0;
          vertical = 0;
        };
        margin = {
          horizontal = 0;
          vertical = 5;
        };
      };

      fonts = [ "monospace:size=10" ];

      colors = {
        root = "#000000";
        fullscreen = "#000000";

        unfocused = {
          text = "#bbbbbb";
          background = "#222222";
          border = "#444444";
        };

        focused = {
          text = "#eeeeee";
          background = "#005577";
          border = "#005577";
        };

        urgent = {
          text = "#ffffff";
          background = "#222222";
          border = "#770000";
        };
      };

      gaps = {
        enable = false;
        inner = {
          horizontal = 10;
          vertical = 10;
        };
        outer = {
          horizontal = 10;
          vertical = 10;
        };
        monocle = false;
      };
    };

    input = {
      keyboard = {
        layout = "us";
        variant = null;
        options = null;
        repeat_rate = 25;
        repeat_delay = 600;
      };

      touchpad = {
        tap_to_click = true;
        tap_and_drag = true;
        drag_lock = true;
        natural_scrolling = false;
        disable_while_typing = true;
        left_handed = false;
        middle_emulation = false;
        scroll_method = "two_finger";
        click_method = "button_areas";
        accel_profile = "adaptive";
        accel_speed = 0.0;
        button_map = "lrm";
      };
    };

    windows = {
      swallow = {
        enable = false;
        border_multiplier = 0.0;
      };

      rules = [ ];
    };

    workspaces = {
      tags = [
        "1"
        "2"
        "3"
        "4"
        "5"
        "6"
        "7"
        "8"
        "9"
      ];
    };

    layouts = {
      tile = {
        enable = true;
        symbol = "[]=";
      };
      floating = {
        enable = true;
        symbol = "><>";
      };
      monocle = {
        enable = true;
        symbol = "[M]";
      };
    };

    monitors = [
      {
        name = null;
        master_factor = 0.5;
        master_count = 1;
        scale = 1;
        default_layout = "tile";
        transform = "normal";
        position = "auto";
      }
    ];

    bindings = {
      mod = "ALT";

      keys = [
        {
          bind = "mod+b";
          action = "togglebar";
        }

        {
          bind = "mod+j";
          action = "focusstack";
          arg = 1;
        }
        {
          bind = "mod+k";
          action = "focusstack";
          arg = -1;
        }

        {
          bind = "mod+i";
          action = "incnmaster";
          arg = 1;
        }
        {
          bind = "mod+d";
          action = "incnmaster";
          arg = -1;
        }
        {
          bind = "mod+h";
          action = "setmfact";
          arg = -0.05;
        }
        {
          bind = "mod+l";
          action = "setmfact";
          arg = 0.05;
        }

        {
          bind = "mod+return";
          action = "zoom";
        }
        {
          bind = "mod+tab";
          action = "view";
        }
        {
          bind = "mod+shift+c";
          action = "killclient";
        }

        {
          bind = "mod+t";
          action = "setlayout";
          arg = "tile";
        }
        {
          bind = "mod+f";
          action = "setlayout";
          arg = "floating";
        }
        {
          bind = "mod+m";
          action = "setlayout";
          arg = "monocle";
        }
        {
          bind = "mod+space";
          action = "cyclelayout";
        }

        {
          bind = "mod+shift+space";
          action = "togglefloating";
        }
        {
          bind = "mod+e";
          action = "togglefullscreen";
        }

        {
          bind = "mod+0";
          action = "viewall";
        }
        {
          bind = "mod+shift+0";
          action = "tagall";
        }

        {
          bind = "mod+comma";
          action = "focusmon";
          arg = "left";
        }
        {
          bind = "mod+period";
          action = "focusmon";
          arg = "right";
        }
        {
          bind = "mod+shift+comma";
          action = "tagmon";
          arg = "left";
        }
        {
          bind = "mod+shift+period";
          action = "tagmon";
          arg = "right";
        }

        {
          bind = "mod+1";
          action = "view";
          arg = 1;
        }
        {
          bind = "mod+2";
          action = "view";
          arg = 2;
        }
        {
          bind = "mod+3";
          action = "view";
          arg = 3;
        }
        {
          bind = "mod+4";
          action = "view";
          arg = 4;
        }
        {
          bind = "mod+5";
          action = "view";
          arg = 5;
        }
        {
          bind = "mod+6";
          action = "view";
          arg = 6;
        }
        {
          bind = "mod+7";
          action = "view";
          arg = 7;
        }
        {
          bind = "mod+8";
          action = "view";
          arg = 8;
        }
        {
          bind = "mod+9";
          action = "view";
          arg = 9;
        }

        {
          bind = "mod+shift+1";
          action = "tag";
          arg = 1;
        }
        {
          bind = "mod+shift+2";
          action = "tag";
          arg = 2;
        }
        {
          bind = "mod+shift+3";
          action = "tag";
          arg = 3;
        }
        {
          bind = "mod+shift+4";
          action = "tag";
          arg = 4;
        }
        {
          bind = "mod+shift+5";
          action = "tag";
          arg = 5;
        }
        {
          bind = "mod+shift+6";
          action = "tag";
          arg = 6;
        }
        {
          bind = "mod+shift+7";
          action = "tag";
          arg = 7;
        }
        {
          bind = "mod+shift+8";
          action = "tag";
          arg = 8;
        }
        {
          bind = "mod+shift+9";
          action = "tag";
          arg = 9;
        }

        {
          bind = "mod+shift+q";
          action = "quit";
        }
      ];

      mouse = [
        {
          bind = "left";
          target = "layout_symbol";
          action = "setlayout";
          arg = "tile";
        }
        {
          bind = "right";
          target = "layout_symbol";
          action = "setlayout";
          arg = "monocle";
        }

        {
          bind = "middle";
          target = "title";
          action = "zoom";
        }

        {
          bind = "mod+left";
          target = "client";
          action = "moveresize";
          arg = "move";
        }
        {
          bind = "mod+middle";
          target = "client";
          action = "togglefloating";
        }
        {
          bind = "mod+right";
          target = "client";
          action = "moveresize";
          arg = "resize";
        }

        {
          bind = "left";
          target = "tagbar";
          action = "view";
        }
        {
          bind = "right";
          target = "tagbar";
          action = "toggleview";
        }
        {
          bind = "mod+left";
          target = "tagbar";
          action = "tag";
        }
        {
          bind = "mod+right";
          target = "tagbar";
          action = "toggletag";
        }
      ];
    };

    advanced = {
      idle_inhibit_visible_only = false;
      log_level = "error";
      send_events_mode = "enabled";
    };
  };

  cfg = lib.recursiveUpdate defaults settings;

  boolToInt = b: if b then 1 else 0;

  formatValue =
    v:
    if builtins.isBool v then
      toString (boolToInt v)
    else if builtins.isFloat v then
      "${toString v}f"
    else
      toString v;

  formatStringArray =
    items:
    let
      quoted = map (s: ''"${s}"'') items;
    in
    lib.concatStringsSep ", " quoted;

  formatEnvVars =
    envs:
    let
      entries = lib.mapAttrsToList (name: value: ''{ "${name}", "${value}" }'') envs;
    in
    lib.concatStringsSep ",\n\t" entries;

  getGapValue = gapsCfg: field: if gapsCfg.enable then field else 0;

  getGapBool = gapsCfg: field: if gapsCfg.enable then field else false;

  formatAutostart =
    items:
    if items == [ ] then
      "NULL"
    else
      let
        formatCommand =
          cmd:
          let
            parts = lib.splitString " " cmd;
            quoted = map (s: ''"${s}"'') parts;
            joined = lib.concatStringsSep ", " quoted;
          in
          "${joined}, NULL";

        formattedCommands = map formatCommand items;
      in
      lib.concatStringsSep ",\n\t" formattedCommands;

  formatXkbRules =
    kb:
    let
      fields = lib.filterAttrs (name: value: value != null) {
        layout = kb.layout or null;
        variant = kb.variant or null;
        options = kb.options or null;
      };

      formatField = name: value: ''.${name} = "${value}",'';

      formattedFields = lib.mapAttrsToList formatField fields;
    in
    if formattedFields == [ ] then "" else "\n\t" + lib.concatStringsSep "\n\t" formattedFields;

  hexToColorMacro =
    hex:
    let
      cleanHex = lib.removePrefix "#" hex;
    in
    "0x${cleanHex}ff";

  formatColorScheme = colors: ''
    [SchemeNorm] = { ${hexToColorMacro colors.unfocused.text}, ${hexToColorMacro colors.unfocused.background}, ${hexToColorMacro colors.unfocused.border} },
      [SchemeSel]  = { ${hexToColorMacro colors.focused.text}, ${hexToColorMacro colors.focused.background}, ${hexToColorMacro colors.focused.border} },
      [SchemeUrg]  = { ${hexToColorMacro colors.urgent.text}, ${hexToColorMacro colors.urgent.background}, ${hexToColorMacro colors.urgent.border} }'';

  scrollMethodMap = {
    "none" = "LIBINPUT_CONFIG_SCROLL_NO_SCROLL";
    "two_finger" = "LIBINPUT_CONFIG_SCROLL_2FG";
    "edge" = "LIBINPUT_CONFIG_SCROLL_EDGE";
    "on_button_down" = "LIBINPUT_CONFIG_SCROLL_ON_BUTTON_DOWN";
  };

  clickMethodMap = {
    "none" = "LIBINPUT_CONFIG_CLICK_METHOD_NONE";
    "button_areas" = "LIBINPUT_CONFIG_CLICK_METHOD_BUTTON_AREAS";
    "clickfinger" = "LIBINPUT_CONFIG_CLICK_METHOD_CLICKFINGER";
  };

  accelProfileMap = {
    "flat" = "LIBINPUT_CONFIG_ACCEL_PROFILE_FLAT";
    "adaptive" = "LIBINPUT_CONFIG_ACCEL_PROFILE_ADAPTIVE";
  };

  buttonMapMap = {
    "lrm" = "LIBINPUT_CONFIG_TAP_MAP_LRM"; # left/right/middle
    "lmr" = "LIBINPUT_CONFIG_TAP_MAP_LMR"; # left/middle/right
  };

  sendEventsMap = {
    "enabled" = "LIBINPUT_CONFIG_SEND_EVENTS_ENABLED";
    "disabled" = "LIBINPUT_CONFIG_SEND_EVENTS_DISABLED";
    "disabled_on_external_mouse" = "LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE";
  };

  mapEnum =
    enumName: mapping: value:
    if mapping ? ${value} then
      mapping.${value}
    else
      throw ''
        Invalid ${enumName}: "${value}"
        Valid options: ${lib.concatStringsSep ", " (lib.attrNames mapping)}
      '';

  mapScrollMethod = mapEnum "scroll_method" scrollMethodMap;
  mapClickMethod = mapEnum "click_method" clickMethodMap;
  mapAccelProfile = mapEnum "accel_profile" accelProfileMap;
  mapButtonMap = mapEnum "button_map" buttonMapMap;

  layoutFunctionMap = {
    tile = "tile";
    floating = "NULL";
    monocle = "monocle";
  };

  layoutOrder = [
    "tile"
    "floating"
    "monocle"
  ];

  formatLayouts =
    layouts:
    let
      formatLayout =
        name:
        if (layouts.${name}.enable or false) then
          let
            cfg = layouts.${name};
            func =
              layoutFunctionMap.${name} or (throw ''
                Unknown layout: "${name}"
                Valid layouts: ${lib.concatStringsSep ", " (lib.attrNames layoutFunctionMap)}
              '');
          in
          ''{ "${cfg.symbol}", ${func} }''
        else
          null;

      formattedLayouts = builtins.filter (x: x != null) (map formatLayout layoutOrder);
    in
    if formattedLayouts == [ ] then
      throw "At least one layout must be enabled"
    else
      lib.concatStringsSep ",\n\t" formattedLayouts;

  formatWindowRules =
    rules:
    let
      formatRule =
        rule:
        let
          app_id = rule.app_id or null;
          title = rule.title or null;
          workspace = rule.workspace or null;
          floating = rule.floating or false;
          terminal = rule.terminal or false;
          no_swallow = rule.no_swallow or false;
          monitor = rule.monitor or (-1);

          formatStr = s: if s == null then "NULL" else ''"${s}"'';

          tagsMask =
            if workspace == null then
              "0"
            else
              let
                num = if builtins.isString workspace then lib.toInt workspace else workspace;
              in
              if num >= 1 && num <= 9 then
                "1 << ${toString (num - 1)}"
              else
                throw "workspace must be between 1 and 9, got ${toString num}";
        in
        ''{ ${formatStr app_id}, ${formatStr title}, ${tagsMask}, ${toString (boolToInt floating)}, ${toString (boolToInt terminal)}, ${toString (boolToInt no_swallow)}, ${toString monitor} }'';

      formattedRules = map formatRule rules;
    in
    if formattedRules == [ ] then
      ''{ NULL, NULL, 0, 0, 0, 0, -1 }''
    else
      lib.concatStringsSep ",\n\t" formattedRules;

  transformMap = {
    "normal" = "WL_OUTPUT_TRANSFORM_NORMAL";
    "90" = "WL_OUTPUT_TRANSFORM_90";
    "180" = "WL_OUTPUT_TRANSFORM_180";
    "270" = "WL_OUTPUT_TRANSFORM_270";
    "flipped" = "WL_OUTPUT_TRANSFORM_FLIPPED";
    "flipped_90" = "WL_OUTPUT_TRANSFORM_FLIPPED_90";
    "flipped_180" = "WL_OUTPUT_TRANSFORM_FLIPPED_180";
    "flipped_270" = "WL_OUTPUT_TRANSFORM_FLIPPED_270";
  };

  mapTransform = mapEnum "transform" transformMap;

  getEnabledLayoutNames =
    layouts: builtins.filter (name: layouts.${name}.enable or false) layoutOrder;

  getLayoutIndex =
    layouts: layoutName:
    let
      enabledLayouts = getEnabledLayoutNames layouts;
      findIndex =
        list: name:
        let
          indices = lib.imap0 (i: n: if n == name then i else null) list;
          filtered = builtins.filter (x: x != null) indices;
        in
        if filtered == [ ] then
          throw ''
            Layout "${name}" not found or not enabled.
            Enabled layouts: ${lib.concatStringsSep ", " enabledLayouts}
          ''
        else
          builtins.head filtered;
    in
    findIndex enabledLayouts layoutName;

  formatMonitorRules =
    monitors: layouts:
    let
      formatMonitor =
        mon:
        let
          name = mon.name or null;
          master_factor = mon.master_factor or 0.55;
          master_count = mon.master_count or 1;
          scale = mon.scale or 1;
          default_layout = mon.default_layout or "tile";
          transform = mon.transform or "normal";
          position = mon.position or "auto";

          nameStr = if name == null then "NULL" else ''"${name}"'';

          layoutIdx = getLayoutIndex layouts default_layout;
          layoutRef = "&layouts[${toString layoutIdx}]";

          transformEnum = mapTransform transform;

          pos =
            if position == "auto" then
              {
                x = -1;
                y = -1;
              }
            else if builtins.isAttrs position then
              {
                x = position.x or 0;
                y = position.y or 0;
              }
            else
              throw "position must be 'auto' or { x = ...; y = ...; }";
        in
        ''{ ${nameStr}, ${toString master_factor}f, ${toString master_count}, ${toString scale}, ${layoutRef}, ${transformEnum}, ${toString pos.x}, ${toString pos.y} }'';

      formattedMonitors = map formatMonitor monitors;
    in
    if formattedMonitors == [ ] then
      throw "At least one monitor rule must be defined"
    else
      lib.concatStringsSep ",\n\t" formattedMonitors;

  sanitizeCommandName =
    cmd:
    let
      sanitized =
        lib.replaceStrings
          [
            " "
            "-"
            "/"
            "."
            "~"
            "$"
            "@"
            "%"
            "+"
            "!"
            "#"
            "&"
            "*"
            "("
            ")"
            "["
            "]"
            "{"
            "}"
            "|"
            ";"
            ":"
            "'"
            "\""
            "<"
            ">"
            "?"
            ","
            "="
          ]
          [
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
            "_"
          ]
          cmd;
    in
    "${sanitized}_cmd";

  extractSpawnCommands =
    keys: mouse:
    let
      keySpawns = builtins.filter (bind: bind.action == "spawn") keys;

      mouseSpawns = builtins.filter (bind: bind.action == "spawn") mouse;

      allSpawns = keySpawns ++ mouseSpawns;
      commands = map (bind: bind.arg) allSpawns;

      unique = lib.unique commands;
    in
    unique;

  formatCommands =
    commands:
    let
      formatCmd =
        cmd:
        let
          varName = sanitizeCommandName cmd;
          parts = lib.splitString " " cmd;
          quoted = map (s: ''"${s}"'') parts;
          argv = lib.concatStringsSep ", " quoted;
        in
        ''static const char *${varName}[] = { ${argv}, NULL };'';

      formatted = map formatCmd commands;
    in
    lib.concatStringsSep "\n" formatted;

  buildCommandLookup =
    commands:
    lib.listToAttrs (
      map (cmd: {
        name = cmd;
        value = sanitizeCommandName cmd;
      }) commands
    );

  modifierMap = {
    shift = "WLR_MODIFIER_SHIFT";
    ctrl = "WLR_MODIFIER_CTRL";
    alt = "WLR_MODIFIER_ALT";
    super = "WLR_MODIFIER_LOGO";
    logo = "WLR_MODIFIER_LOGO";
  };

  keyMap = {
    # Letters (lowercase)
    a = "XKB_KEY_a";
    b = "XKB_KEY_b";
    c = "XKB_KEY_c";
    d = "XKB_KEY_d";
    e = "XKB_KEY_e";
    f = "XKB_KEY_f";
    g = "XKB_KEY_g";
    h = "XKB_KEY_h";
    i = "XKB_KEY_i";
    j = "XKB_KEY_j";
    k = "XKB_KEY_k";
    l = "XKB_KEY_l";
    m = "XKB_KEY_m";
    n = "XKB_KEY_n";
    o = "XKB_KEY_o";
    p = "XKB_KEY_p";
    q = "XKB_KEY_q";
    r = "XKB_KEY_r";
    s = "XKB_KEY_s";
    t = "XKB_KEY_t";
    u = "XKB_KEY_u";
    v = "XKB_KEY_v";
    w = "XKB_KEY_w";
    x = "XKB_KEY_x";
    y = "XKB_KEY_y";
    z = "XKB_KEY_z";

    # Letters (uppercase)
    A = "XKB_KEY_A";
    B = "XKB_KEY_B";
    C = "XKB_KEY_C";
    D = "XKB_KEY_D";
    E = "XKB_KEY_E";
    F = "XKB_KEY_F";
    G = "XKB_KEY_G";
    H = "XKB_KEY_H";
    I = "XKB_KEY_I";
    J = "XKB_KEY_J";
    K = "XKB_KEY_K";
    L = "XKB_KEY_L";
    M = "XKB_KEY_M";
    N = "XKB_KEY_N";
    O = "XKB_KEY_O";
    P = "XKB_KEY_P";
    Q = "XKB_KEY_Q";
    R = "XKB_KEY_R";
    S = "XKB_KEY_S";
    T = "XKB_KEY_T";
    U = "XKB_KEY_U";
    V = "XKB_KEY_V";
    W = "XKB_KEY_W";
    X = "XKB_KEY_X";
    Y = "XKB_KEY_Y";
    Z = "XKB_KEY_Z";

    # Numbers
    "0" = "XKB_KEY_0";
    "1" = "XKB_KEY_1";
    "2" = "XKB_KEY_2";
    "3" = "XKB_KEY_3";
    "4" = "XKB_KEY_4";
    "5" = "XKB_KEY_5";
    "6" = "XKB_KEY_6";
    "7" = "XKB_KEY_7";
    "8" = "XKB_KEY_8";
    "9" = "XKB_KEY_9";

    # Special keys
    space = "XKB_KEY_space";
    return = "XKB_KEY_Return";
    enter = "XKB_KEY_Return";
    tab = "XKB_KEY_Tab";
    escape = "XKB_KEY_Escape";
    esc = "XKB_KEY_Escape";
    backspace = "XKB_KEY_BackSpace";
    delete = "XKB_KEY_Delete";
    insert = "XKB_KEY_Insert";
    home = "XKB_KEY_Home";
    end = "XKB_KEY_End";
    pageup = "XKB_KEY_Page_Up";
    pagedown = "XKB_KEY_Page_Down";

    # Arrow keys
    left = "XKB_KEY_Left";
    right = "XKB_KEY_Right";
    up = "XKB_KEY_Up";
    down = "XKB_KEY_Down";

    # Punctuation (base)
    comma = "XKB_KEY_comma";
    period = "XKB_KEY_period";
    slash = "XKB_KEY_slash";
    backslash = "XKB_KEY_backslash";
    semicolon = "XKB_KEY_semicolon";
    apostrophe = "XKB_KEY_apostrophe";
    grave = "XKB_KEY_grave";
    minus = "XKB_KEY_minus";
    equal = "XKB_KEY_equal";
    bracketleft = "XKB_KEY_bracketleft";
    bracketright = "XKB_KEY_bracketright";

    # Punctuation (shifted) - so you can write mod+less directly
    less = "XKB_KEY_less";
    greater = "XKB_KEY_greater";
    question = "XKB_KEY_question";
    bar = "XKB_KEY_bar";
    colon = "XKB_KEY_colon";
    quotedbl = "XKB_KEY_quotedbl";
    asciitilde = "XKB_KEY_asciitilde";
    underscore = "XKB_KEY_underscore";
    plus = "XKB_KEY_plus";
    braceleft = "XKB_KEY_braceleft";
    braceright = "XKB_KEY_braceright";
    exclam = "XKB_KEY_exclam";
    at = "XKB_KEY_at";
    numbersign = "XKB_KEY_numbersign";
    dollar = "XKB_KEY_dollar";
    percent = "XKB_KEY_percent";
    asciicircum = "XKB_KEY_asciicircum";
    ampersand = "XKB_KEY_ampersand";
    asterisk = "XKB_KEY_asterisk";
    parenleft = "XKB_KEY_parenleft";
    parenright = "XKB_KEY_parenright";

    # Function keys
    f1 = "XKB_KEY_F1";
    f2 = "XKB_KEY_F2";
    f3 = "XKB_KEY_F3";
    f4 = "XKB_KEY_F4";
    f5 = "XKB_KEY_F5";
    f6 = "XKB_KEY_F6";
    f7 = "XKB_KEY_F7";
    f8 = "XKB_KEY_F8";
    f9 = "XKB_KEY_F9";
    f10 = "XKB_KEY_F10";
    f11 = "XKB_KEY_F11";
    f12 = "XKB_KEY_F12";

    # Media keys
    audioplay = "XKB_KEY_XF86AudioPlay";
    audiopause = "XKB_KEY_XF86AudioPause";
    audioplaypause = "XKB_KEY_XF86AudioPlay";
    audiostop = "XKB_KEY_XF86AudioStop";
    audionext = "XKB_KEY_XF86AudioNext";
    audioprev = "XKB_KEY_XF86AudioPrev";
    audioprevious = "XKB_KEY_XF86AudioPrev";
    audiomute = "XKB_KEY_XF86AudioMute";
    audiolowervolume = "XKB_KEY_XF86AudioLowerVolume";
    audioraisevolume = "XKB_KEY_XF86AudioRaiseVolume";
    volumedown = "XKB_KEY_XF86AudioLowerVolume";
    volumeup = "XKB_KEY_XF86AudioRaiseVolume";
    mute = "XKB_KEY_XF86AudioMute";
    brightnessdown = "XKB_KEY_XF86MonBrightnessDown";
    brightnessup = "XKB_KEY_XF86MonBrightnessUp";
    monbrightnessdown = "XKB_KEY_XF86MonBrightnessDown";
    monbrightnessup = "XKB_KEY_XF86MonBrightnessUp";
    print = "XKB_KEY_Print";
    printscreen = "XKB_KEY_Print";
    sysrq = "XKB_KEY_Sys_Req";
    calculator = "XKB_KEY_XF86Calculator";
    mail = "XKB_KEY_XF86Mail";
    homepage = "XKB_KEY_XF86HomePage";
    search = "XKB_KEY_XF86Search";
    favorites = "XKB_KEY_XF86Favorites";
    display = "XKB_KEY_XF86Display";
    touchpadtoggle = "XKB_KEY_XF86TouchpadToggle";
    touchpadon = "XKB_KEY_XF86TouchpadOn";
    touchpadoff = "XKB_KEY_XF86TouchpadOff";
    kbdbrightnessdown = "XKB_KEY_XF86KbdBrightnessDown";
    kbdbrightnessup = "XKB_KEY_XF86KbdBrightnessUp";
    sleep = "XKB_KEY_XF86Sleep";
    wakeup = "XKB_KEY_XF86WakeUp";
    poweroff = "XKB_KEY_XF86PowerOff";
    wlan = "XKB_KEY_XF86WLAN";
    tools = "XKB_KEY_XF86Tools";
    battery = "XKB_KEY_XF86Battery";
    bluetooth = "XKB_KEY_XF86Bluetooth";
    micmute = "XKB_KEY_XF86AudioMicMute";
  };

  # Shifted key mapping (for TAGKEYS compatibility)
  shiftedKeyMap = {
    "1" = "XKB_KEY_exclam";
    "2" = "XKB_KEY_at";
    "3" = "XKB_KEY_numbersign";
    "4" = "XKB_KEY_dollar";
    "5" = "XKB_KEY_percent";
    "6" = "XKB_KEY_asciicircum";
    "7" = "XKB_KEY_ampersand";
    "8" = "XKB_KEY_asterisk";
    "9" = "XKB_KEY_parenleft";
    "0" = "XKB_KEY_parenright";
    "minus" = "XKB_KEY_underscore";
    "equal" = "XKB_KEY_plus";
    "bracketleft" = "XKB_KEY_braceleft";
    "bracketright" = "XKB_KEY_braceright";
    "backslash" = "XKB_KEY_bar";
    "semicolon" = "XKB_KEY_colon";
    "apostrophe" = "XKB_KEY_quotedbl";
    "grave" = "XKB_KEY_asciitilde";
    "comma" = "XKB_KEY_less";
    "period" = "XKB_KEY_greater";
    "slash" = "XKB_KEY_question";
  };

  actionTypeMap = {
    togglebar = {
      func = "togglebar";
      argType = "none";
    };
    togglegaps = {
      func = "togglegaps";
      argType = "none";
    };
    defaultgaps = {
      func = "defaultgaps";
      argType = "none";
    };
    zoom = {
      func = "zoom";
      argType = "none";
    };
    killclient = {
      func = "killclient";
      argType = "none";
    };
    quit = {
      func = "quit";
      argType = "none";
    };
    togglefloating = {
      func = "togglefloating";
      argType = "none";
    };
    togglefullscreen = {
      func = "togglefullscreen";
      argType = "none";
    };
    toggleswallow = {
      func = "toggleswallow";
      argType = "none";
    };
    toggleautoswallow = {
      func = "toggleautoswallow";
      argType = "none";
    };
    cyclelayout = {
      func = "setlayout";
      argType = "none";
    };

    focusstack = {
      func = "focusstack";
      argType = "int";
      unionField = "i";
    };
    incnmaster = {
      func = "incnmaster";
      argType = "int";
      unionField = "i";
    };
    incgaps = {
      func = "incgaps";
      argType = "int";
      unionField = "i";
    };
    incigaps = {
      func = "incigaps";
      argType = "int";
      unionField = "i";
    };
    incogaps = {
      func = "incogaps";
      argType = "int";
      unionField = "i";
    };
    incihgaps = {
      func = "incihgaps";
      argType = "int";
      unionField = "i";
    };
    incivgaps = {
      func = "incivgaps";
      argType = "int";
      unionField = "i";
    };
    incohgaps = {
      func = "incohgaps";
      argType = "int";
      unionField = "i";
    };
    incovgaps = {
      func = "incovgaps";
      argType = "int";
      unionField = "i";
    };

    setmfact = {
      func = "setmfact";
      argType = "float";
      unionField = "f";
    };

    spawn = {
      func = "spawn";
      argType = "command";
      unionField = "v";
    };

    setlayout = {
      func = "setlayout";
      argType = "layout";
      unionField = "v";
    };

    focusmon = {
      func = "focusmon";
      argType = "direction";
      unionField = "i";
    };
    tagmon = {
      func = "tagmon";
      argType = "direction";
      unionField = "i";
    };

    view = {
      func = "view";
      argType = "tag";
      unionField = "ui";
    };
    tag = {
      func = "tag";
      argType = "tag";
      unionField = "ui";
    };
    toggleview = {
      func = "toggleview";
      argType = "tag";
      unionField = "ui";
    };
    toggletag = {
      func = "toggletag";
      argType = "tag";
      unionField = "ui";
    };

    viewall = {
      func = "view";
      argType = "allTags";
      unionField = "ui";
    };
    tagall = {
      func = "tag";
      argType = "allTags";
      unionField = "ui";
    };
    moveresize = {
      func = "moveresize";
      argType = "cursorMode";
      unionField = "ui";
    };
  };

  directionMap = {
    left = "WLR_DIRECTION_LEFT";
    right = "WLR_DIRECTION_RIGHT";
    up = "WLR_DIRECTION_UP";
    down = "WLR_DIRECTION_DOWN";
  };

  cursorModeMap = {
    move = "CurMove";
    resize = "CurResize";
  };

  buttonMap = {
    left = "BTN_LEFT";
    middle = "BTN_MIDDLE";
    right = "BTN_RIGHT";
  };

  targetMap = {
    layout_symbol = "ClkLtSymbol";
    title = "ClkTitle";
    status = "ClkStatus";
    client = "ClkClient";
    tagbar = "ClkTagBar";
  };

  parseBind =
    bindStr: mod:
    let
      parts = lib.splitString "+" bindStr;
      key = lib.last parts;
      modParts = lib.init parts;
      hasShift = builtins.elem "shift" modParts;

      mapMod =
        m:
        if m == "mod" then
          "MODKEY"
        else if modifierMap ? ${m} then
          modifierMap.${m}
        else
          throw ''Unknown modifier: "${m}". Valid: mod, shift, ctrl, alt, super'';

      mappedMods = map mapMod modParts;
      modString = if mappedMods == [ ] then "0" else lib.concatStringsSep "|" mappedMods;

      # Check if key is a single letter
      isLetter = builtins.stringLength key == 1 && builtins.match "[a-z]" key != null;

      # Convert to uppercase if it's a letter
      upperKey = if isLetter then lib.toUpper key else key;

      mappedKey =
        # For letters with shift: use uppercase XKB key
        if hasShift && isLetter then
          keyMap.${upperKey} or (throw ''Unknown key: "${upperKey}"'')
        # For numbers with shift: use shifted symbol
        else if hasShift && shiftedKeyMap ? ${key} then
          shiftedKeyMap.${key}
        # Normal mapping
        else if keyMap ? ${key} then
          keyMap.${key}
        else
          throw ''
            Unknown key: "${key}"
            Common keys: a-z, 0-9, space, return, tab, escape, comma, period, etc.
          '';
    in
    {
      modifier = modString;
      key = mappedKey;
    };

  formatArg =
    action: arg: commandLookup: layouts:
    let
      actionInfo = actionTypeMap.${action} or (throw ''Unknown action: "${action}"'');

      argType = actionInfo.argType;
    in
    if argType == "none" then
      "{0}"
    else if argType == "int" then
      "{.i = ${toString arg}}"
    else if argType == "float" then
      "{.f = ${toString arg}f}"
    else if argType == "command" then
      let
        cmdVar = commandLookup.${arg} or (throw ''Command "${arg}" not found in command lookup'');
      in
      "{.v = ${cmdVar}}"
    else if argType == "layout" then
      let
        layoutIdx = getLayoutIndex layouts arg;
      in
      "{.v = &layouts[${toString layoutIdx}]}"
    else if argType == "direction" then
      let
        dir = directionMap.${arg} or (throw ''Unknown direction: "${arg}". Valid: left, right, up, down'');
      in
      "{.i = ${dir}}"
    else if argType == "cursorMode" then
      let
        mode = cursorModeMap.${arg} or (throw ''Unknown cursor mode: "${arg}". Valid: move, resize'');
      in
      "{.ui = ${mode}}"
    else if argType == "tag" then
      if builtins.isInt arg then
        "{.ui = 1 << ${toString (arg - 1)}}"
      else if arg == null then
        "{0}"
      else
        throw ''Tag operation "${action}" expects numeric argument (1-9) or null''
    else if argType == "allTags" then
      "{.ui = ~0}"
    else
      throw ''Unknown argument type: ${argType}'';

  formatKeybindings =
    keys: mod: commandLookup: layouts:
    let
      formatKey =
        bind:
        let
          parsed = parseBind bind.bind mod;
          action = bind.action;
          arg = bind.arg or null;
          actionInfo = actionTypeMap.${action};
          argFormatted = formatArg action arg commandLookup layouts;
        in
        ''{ ${parsed.modifier}, ${parsed.key}, ${actionInfo.func}, ${argFormatted} }'';

      formatted = map formatKey keys;
    in
    lib.concatStringsSep ",\n\t" formatted;

  formatMouseBindings =
    mouse: mod: commandLookup: layouts:
    let
      formatMouse =
        bind:
        let
          parts = lib.splitString "+" bind.bind;
          button = lib.last parts;
          modParts = lib.init parts;

          mappedButton =
            buttonMap.${button} or (throw ''Unknown button: "${button}". Valid: left, middle, right'');

          mapMod =
            m:
            if m == "mod" then
              "MODKEY"
            else if modifierMap ? ${m} then
              modifierMap.${m}
            else
              throw ''Unknown modifier: "${m}"'';

          mappedMods = map mapMod modParts;
          modString = if mappedMods == [ ] then "0" else lib.concatStringsSep "|" mappedMods;

          target = bind.target or "client";
          mappedTarget =
            targetMap.${target}
              or (throw ''Unknown target: "${target}". Valid: layout_symbol, title, status, client, tagbar'');

          action = bind.action;
          arg = bind.arg or null;
          actionInfo = actionTypeMap.${action};
          argFormatted = formatArg action arg commandLookup layouts;
        in
        ''{ ${mappedTarget}, ${modString}, ${mappedButton}, ${actionInfo.func}, ${argFormatted} }'';

      formatted = map formatMouse mouse;
    in
    lib.concatStringsSep ",\n\t" formatted;

  mapModkey =
    mod:
    if mod == "ALT" then
      "WLR_MODIFIER_ALT"
    else if mod == "SUPER" then
      "WLR_MODIFIER_LOGO"
    else if mod == "CTRL" then
      "WLR_MODIFIER_CTRL"
    else
      throw ''Invalid mod key: "${mod}". Valid: ALT, SUPER'';

  logLevelMap = {
    "silent" = "WLR_SILENT";
    "error" = "WLR_ERROR";
    "info" = "WLR_INFO";
    "debug" = "WLR_DEBUG";
  };

  mapLogLevel = mapEnum "log_level" logLevelMap;
  mapSendEvents = mapEnum "send_events_mode" sendEventsMap;

  generateConfig = ''
    #define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                            ((hex >> 16) & 0xFF) / 255.0f, \
                            ((hex >> 8) & 0xFF) / 255.0f, \
                            (hex & 0xFF) / 255.0f }

    /* General window behavior */
    static const int sloppyfocus = ${formatValue cfg.general.focus_follows_mouse};
    static const int bypass_surface_visibility = ${formatValue cfg.advanced.idle_inhibit_visible_only};
    static const int smartborders = ${formatValue cfg.general.smart_borders};
    static const int smartgaps = ${formatValue (getGapBool cfg.appearance.gaps cfg.general.smart_gaps)};
    static const int monoclegaps = ${formatValue (getGapBool cfg.appearance.gaps cfg.appearance.gaps.monocle)};
    static const unsigned int borderpx = ${formatValue cfg.general.border_width};

    /* Bar appearance */
    static const int showbar = ${formatValue cfg.appearance.bar.enable};
    static const int topbar = ${formatValue cfg.appearance.bar.position_top};
    static const int barvertpad = ${formatValue cfg.appearance.bar.margin.vertical};
    static const int barhorzpad = ${formatValue cfg.appearance.bar.margin.horizontal};
    static const int vertpad = ${formatValue cfg.appearance.bar.padding.vertical};
    static const int sidepad = ${formatValue cfg.appearance.bar.padding.horizontal};

    /* Fonts */
    static const char *fonts[] = {${formatStringArray cfg.appearance.fonts}};

    /* Colors */
    static const float rootcolor[] = COLOR(${hexToColorMacro cfg.appearance.colors.root});

    /* Gaps */
    static const unsigned int gappih = ${formatValue (getGapValue cfg.appearance.gaps cfg.appearance.gaps.inner.horizontal)};
    static const unsigned int gappiv = ${formatValue (getGapValue cfg.appearance.gaps cfg.appearance.gaps.inner.vertical)};
    static const unsigned int gappoh = ${formatValue (getGapValue cfg.appearance.gaps cfg.appearance.gaps.outer.horizontal)};
    static const unsigned int gappov = ${formatValue (getGapValue cfg.appearance.gaps cfg.appearance.gaps.outer.vertical)};

    /* Fullscreen background */
    static const float fullscreen_bg[] = COLOR(${hexToColorMacro cfg.appearance.colors.fullscreen});

    /* Color schemes */
    static uint32_t colors[][3] = {
      ${formatColorScheme cfg.appearance.colors}
    };

    /* Window swallowing */
    static int enableautoswallow = ${formatValue cfg.windows.swallow.enable};
    static float swallowborder = ${formatValue cfg.windows.swallow.border_multiplier};

    /* Tags */
    static char *tags[] = { ${formatStringArray cfg.workspaces.tags} };

    /* Logging */
    static int log_level = ${mapLogLevel cfg.advanced.log_level};

    /* Environment variables */
    static const Env envs[] = {
      ${formatEnvVars cfg.environment}
    };

    /* Autostart */
    static const char *const autostart[] = {
      ${formatAutostart cfg.autostart}
    };

    /* Window rules */
    static const Rule rules[] = {
      ${formatWindowRules cfg.windows.rules}
    };

    /* Layouts */
    static const Layout layouts[] = {
      ${formatLayouts cfg.layouts}
    };

    /* Monitor rules */
    static const MonitorRule monrules[] = {
      ${formatMonitorRules cfg.monitors cfg.layouts}
    };

    /* Keyboard configuration */
    static const struct xkb_rule_names xkb_rules = {${formatXkbRules cfg.input.keyboard}
    };

    /* Keyboard repeat */
    static const int repeat_rate = ${formatValue cfg.input.keyboard.repeat_rate};
    static const int repeat_delay = ${formatValue cfg.input.keyboard.repeat_delay};

    /* Touchpad configuration */
    static const int tap_to_click = ${formatValue cfg.input.touchpad.tap_to_click};
    static const int tap_and_drag = ${formatValue cfg.input.touchpad.tap_and_drag};
    static const int drag_lock = ${formatValue cfg.input.touchpad.drag_lock};
    static const int natural_scrolling = ${formatValue cfg.input.touchpad.natural_scrolling};
    static const int disable_while_typing = ${formatValue cfg.input.touchpad.disable_while_typing};
    static const int left_handed = ${formatValue cfg.input.touchpad.left_handed};
    static const int middle_button_emulation = ${formatValue cfg.input.touchpad.middle_emulation};

    /* Touchpad enums */
    static const enum libinput_config_scroll_method scroll_method = ${mapScrollMethod cfg.input.touchpad.scroll_method};
    static const enum libinput_config_click_method click_method = ${mapClickMethod cfg.input.touchpad.click_method};
    static const uint32_t send_events_mode = ${mapSendEvents cfg.advanced.send_events_mode};
    static const enum libinput_config_accel_profile accel_profile = ${mapAccelProfile cfg.input.touchpad.accel_profile};
    static const double accel_speed = ${formatValue cfg.input.touchpad.accel_speed};
    static const enum libinput_config_tap_button_map button_map = ${mapButtonMap cfg.input.touchpad.button_map};

    /* Modifier key */
    #define MODKEY ${mapModkey cfg.bindings.mod}

    #define TAGKEYS(KEY,SKEY,TAG) \
      { MODKEY,                    KEY,            view,            {.ui = 1 << TAG} }, \
      { MODKEY|WLR_MODIFIER_CTRL,  KEY,            toggleview,      {.ui = 1 << TAG} }, \
      { MODKEY|WLR_MODIFIER_SHIFT, SKEY,           tag,             {.ui = 1 << TAG} }, \
      { MODKEY|WLR_MODIFIER_CTRL|WLR_MODIFIER_SHIFT,SKEY,toggletag, {.ui = 1 << TAG} }

    #define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

    /* Commands */
    ${
      let
        commands = extractSpawnCommands cfg.bindings.keys cfg.bindings.mouse;
      in
      formatCommands commands
    }

    /* Keybindings */
    static const Key keys[] = {
      ${
        let
          commands = extractSpawnCommands cfg.bindings.keys cfg.bindings.mouse;
          commandLookup = buildCommandLookup commands;
        in
        formatKeybindings cfg.bindings.keys cfg.bindings.mod commandLookup cfg.layouts
      },
      { WLR_MODIFIER_CTRL|WLR_MODIFIER_ALT,XKB_KEY_Terminate_Server, quit, {0} },
    #define CHVT(n) { WLR_MODIFIER_CTRL|WLR_MODIFIER_ALT,XKB_KEY_XF86Switch_VT_##n, chvt, {.ui = (n)} }
      CHVT(1), CHVT(2), CHVT(3), CHVT(4), CHVT(5), CHVT(6),
      CHVT(7), CHVT(8), CHVT(9), CHVT(10), CHVT(11), CHVT(12),
    };

    /* Mouse bindings */
    static const Button buttons[] = {
      ${
        let
          commands = extractSpawnCommands cfg.bindings.keys cfg.bindings.mouse;
          commandLookup = buildCommandLookup commands;
        in
        formatMouseBindings cfg.bindings.mouse cfg.bindings.mod commandLookup cfg.layouts
      }
    };
  '';
in
pkgs.stdenv.mkDerivation {
  pname = "dwl";
  version = "0.7";
  src = ./.;
  nativeBuildInputs = with pkgs; [
    pkg-config
    wayland-scanner
  ];
  buildInputs = with pkgs; [
    libinput
    libxkbcommon
    fcft
    libdrm
    pixman
    wayland
    wayland-protocols
    wlroots_0_18
    xorg.libxcb
    xorg.xcbutilwm
    xwayland
  ];
  preBuild = ''
    cat > config.def.h << 'EOF'
    ${generateConfig}
    EOF
    cp config.def.h config.h
  '';

  postInstall = ''
    mkdir -p $out/share/dwl
    cp config.def.h $out/
  '';

  makeFlags = [ "PREFIX=$(out)" ];
  meta = with pkgs.lib; {
    description = "dwm for Wayland";
    homepage = "https://codeberg.org/dwl/dwl";
    license = licenses.gpl3Only;
    mainProgram = "dwl";
    platforms = platforms.linux;
  };
}
