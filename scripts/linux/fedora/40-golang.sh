#!/bin/sh
# SPDX-FileCopyrightText: 2025 Samuel Wu
#
# SPDX-License-Identifier: 0BSD

sudo dnf install -y golang

go install github.com/boyter/scc/v3@latest
go install github.com/rhysd/actionlint/cmd/actionlint@latest
