{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # # Development
    # git
    # rustup
    # vscode
    # zed-editor

    # # Utils
    # ffmpeg
    # mailsy
    starship
    # stow
    # tree
    # uv
    # zoxide
    # fzf

    # # Applications
    # itsycal
    # obsidian
    # qbittorrent
  ];
}
