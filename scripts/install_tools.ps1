# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Update packages
winget update --all --accept-package-agreements

# Install CLI tools
winget install -e aristocratos.btop4win ajeetdsouza.zoxide `
  BurntSushi.ripgrep.MSVC charmbracelet.glow dandavison.delta `
  Fastfetch-cli.Fastfetch hpjansson.Chafa ImageMagick.ImageMagick jftuga.less `
  junegunn.fzf koalaman.shellcheck Microsoft.OpenSSH.Preview mvdan.shfmt `
  nektos.act rhysd.actionlint sharkdp.bat sharkdp.fd sharkdp.hexyl `
  sharkdp.hyperfine sharkdp.vivid XAMPPRocky.tokei

winget install --accept-package-agreements -e XP8K0HKJFRXGCK
