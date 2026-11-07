# dotfiles
dotfiles

## herdr
- 設定は `herdr/config.toml` で管理し、`installer.sh` が `~/.config/herdr/config.toml` に配置する。既存の設定が違う内容なら、日時付きの `.bak` に退避してから上書きする。
- herdr 本体は `installer.sh` では入れない。先に `brew install herdr` で入れておく。
