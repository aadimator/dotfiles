{ inputs, config, ... }:
{
  # nix-homebrew = {
  #   enable = true;
  #   enableRosetta = true;
  #   user = "aadam";

  #   taps = {
  #     "homebrew/homebrew-core" = inputs.homebrew-core;
  #     "homebrew/homebrew-cask" = inputs.homebrew-cask;
  #     "homebrew/homebrew-bundle" = inputs.homebrew-bundle;
  #     "homebrew/homebrew-services" = inputs.homebrew-services;
  #     "felixkratz/homebrew-formulae" = inputs.felixkratz-formulae;
  #   };

  #   mutableTaps = false;
  #   autoMigrate = true;
  # };

  homebrew = {
    enable = true;
    # brewPrefix = "/opt/homebrew/bin";

    taps = [
      # "homebrew/core"
      # "homebrew/cask"
      "homebrew/bundle"
      "homebrew/services"
      "felixkratz/formulae"
    ];

    brews = [
      "borders"
      "ffmpeg"
      "fzf"
      "git"
      "juliaup"
      "mailsy"
      "mas"
      "pixi"
      "rustup"
      "sketchybar"
      # "starship"
      "stow"
      "tree"
      "uv"
      "zoxide"
    ];

    casks = [
      # Development
      "ghostty"
      "quarto"
      "visual-studio-code"
      "zed"

      # Utilities
      "aldente"
      "hammerspoon"
      "appcleaner"
      "bitwarden"
      "karabiner-elements"
      "raycast"
      "rocket"
      "shottr"
      "stats"
      "the-unarchiver"
      "itsycal"


      # Applications
      "adobe-creative-cloud"
      "anki"
      "anytype"
      "calibre"
      "chatgpt"
      "cyberduck"
      "discord"
      "dropbox"
      "handbrake"
      "imageoptim"
      "ollama"
      "obsidian"
      "qbittorrent"
      "signal"
      "siyuan"
      "slack"
      "stolendata-mpv"
      "todoist"
      "telegram"
      "whatsapp"
      "zotero"
      "zen-browser"

      # Microsoft
      "microsoft-auto-update"
      "microsoft-office"
      "microsoft-teams"

      # Fonts
      "font-fira-code"
      "font-hack-nerd-font"
      "font-meslo-lg-nerd-font"
      "font-sketchybar-app-font"
      "font-ia-writer-duo"
      "font-ia-writer-mono"
      "font-ia-writer-quattro"
    ];

    global = {
      brewfile = true;
      autoUpdate = false;
    };

    onActivation = {
      autoUpdate = true;
      upgrade = true;
      # cleanup = "zap";
    };
  };
}
