# SPDX-FileCopyrightText: 2026 Samuel Wu
#
# SPDX-License-Identifier: 0BSD


from pathlib import Path
from random import choice


from kitty.boss import Boss
from kittens.tui.handler import result_handler


def main(args: list[str]) -> str:
    pass


@result_handler(no_ui=True)
def handle_result(
    args: list[str], answer: str, target_window_id: int, boss: Boss
) -> None:
    w = boss.window_id_map.get(target_window_id)

    if w is not None:
        selected_logo = choice(list(Path(args[0]).glob("**/*.png")))

        boss.call_remote_control(w, ("set-window-logo", "--self", str(selected_logo)))
