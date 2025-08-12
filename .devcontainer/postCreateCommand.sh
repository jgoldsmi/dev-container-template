#!/bin/bash

GITHUB_USER=jgoldsmi

~/.local/bin/mise exec chezmoi@latest -- chezmoi init --apply https://github.com/$GITHUB_USER/dotfiles.git
