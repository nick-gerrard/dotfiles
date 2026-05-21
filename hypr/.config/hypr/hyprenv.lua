-- NVIDIA GPU
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")

-- Scale GTK/XWayland apps for 4K monitor (pairs with xwayland.force_zero_scaling = true)
hl.env("GDK_SCALE", "2")
-- Bigger cursor for XWayland apps on 4K (HYPRCURSOR_SIZE stays at 24 — Hyprland scales it itself)
hl.env("XCURSOR_SIZE", "24")

-- Prefer Wayland backends
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Scale electron apps properly
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
