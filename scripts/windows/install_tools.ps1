# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

# Update packages
winget update --all --accept-package-agreements

# Install CLI tools
winget install -e aristocratos.btop4win ajeetdsouza.zoxide benboyter.scc `
  BurntSushi.ripgrep.MSVC charmbracelet.glow dandavison.delta dbrgn.tealdeer `
  eza-community.eza Fastfetch-cli.Fastfetch GitHub.cli hpjansson.Chafa `
  ImageMagick.ImageMagick jftuga.less junegunn.fzf koalaman.shellcheck `
  mvdan.shfmt nektos.act rhysd.actionlint sharkdp.bat sharkdp.fd sharkdp.hexyl `
  sharkdp.vivid XAMPPRocky.tokei zyedidia.micro

winget install --accept-package-agreements -e XP8K0HKJFRXGCK

# Install Nodejs tools
winget install -e OpenJS.NodeJS

npm install -g markdownlint-cli
