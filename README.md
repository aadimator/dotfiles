# .dotfiles

This repository contains my dotfiles which I use to configure my system.

## Usage

To use these dotfiles, clone this repository to your home directory and run the `config.sh` script. This script will create symlinks to the dotfiles in your home directory.

```bash
cd ~/workspace
git clone git@github.com:aadimator/dotfiles.git
cd dotfiles
chmod +x ./config.sh
./config.sh
```

---

# VS Code Settings

## Font

- [Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing): `brew install font-fira-code`

## Extensions

```
charliermarsh.ruff
esbenp.prettier-vscode
github.codespaces
github.copilot
github.copilot-chat
julialang.language-julia
mechatroner.rainbow-csv
ms-python.debugpy
ms-python.mypy-type-checker
ms-python.python
ms-python.vscode-pylance
ms-toolsai.datawrangler
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-toolsai.tensorboard
ms-toolsai.vscode-jupyter-cell-tags
ms-toolsai.vscode-jupyter-slideshow
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode.live-server
ms-vscode.remote-explorer
ms-vscode.remote-server
ms-vsliveshare.vsliveshare
nash.awesome-flutter-snippets
nur.just-black
peterschmalfeldt.explorer-exclude
quarto.quarto
reditorsupport.r
tamasfe.even-better-toml
tomoki1207.pdf
usernamehw.errorlens
visualstudioexptteam.intellicode-api-usage-examples
visualstudioexptteam.vscodeintellicode
vscode-icons-team.vscode-icons
```

## Settings

```json
{
  "diffEditor.ignoreTrimWhitespace": false,
  "editor.detectIndentation": true,
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "editor.fontSize": 14,
  "editor.formatOnPaste": false,
  "editor.inlineSuggest.enabled": true,
  "editor.lineHeight": 0,
  "editor.linkedEditing": true,
  "editor.minimap.enabled": false,
  "editor.snippetSuggestions": "top",
  "editor.suggestSelection": "first",
  "editor.tabSize": 2,
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": [
          "keyword.operator",
          "punctuation.separator"
        ],
        "settings": {
          "fontStyle": ""
        }
      },
      {
        "scope": [
          "comment",
          "comment.block"
        ],
        "settings": {
          "fontStyle": "italic",
          "foreground": "#F5F"
        }
      },
      {
        "name": "envKeys",
        "scope": "string.quoted.double.env,source.env,constant.numeric.env",
        "settings": {
          "foreground": "#19354900"
        }
      }
    ]
  },
  "editor.unicodeHighlight.invisibleCharacters": false,
  "emmet.showAbbreviationSuggestions": false,
  "explorer.openEditors.visible": 1,
  "extensions.ignoreRecommendations": true,
  "files.autoSave": "onWindowChange",
  "git.autofetch": true,
  "git.openRepositoryInParentFolders": "never",
  "screencastMode.keyboardOptions": {
    "showCommandGroups": false,
    "showCommands": false,
    "showKeybindings": true,
    "showKeys": false,
    "showSingleEditorCursorMoves": true
  },
  "search.exclude": {
    "**/*.code-search": true,
    "**/bower_components": true,
    "**/node_modules": true
  },
  "search.useIgnoreFiles": false,
  "terminal.integrated.fontSize": 14,
  "vsicons.dontShowNewVersionMessage": true,
  // "window.zoomLevel": 4,
  "workbench.colorTheme": "Just Black",
  "workbench.editor.labelFormat": "medium",
  "workbench.editor.showTabs": "none",
  "workbench.iconTheme": "vscode-icons",
  "workbench.sideBar.location": "right",
  "workbench.startupEditor": "newUntitledFile",
  "github.copilot.enable": {
    "quarto": false,
    "*": true
  },
  // "workbench.statusBar.visible": false,
}

```

---

## Inspiration

Initially, I copied most of the settings/configurations from **w3cjs's** [dotfiles](https://github.com/w3cj/dotfiles) and [VSCode Settings](https://github.com/CodingGarden/vscode-settings) repositories. I have made some changes to suit my needs, and I'll keep on updating them as I find new settings/extensions that I like.
