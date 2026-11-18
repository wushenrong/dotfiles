# SPDX-FileCopyrightText: 2026 Samuel Wu
#
# SPDX-License-Identifier: 0BSD


from pathlib import Path
from random import choice


from kitty.boss import Boss
from kittens.tui.handler import result_handler


SUPPORTED_IMAGE_FORMATS = {".png", ".jpg", ".jpeg", ".webp", ".gif", ".tiff", ".bmp"}


def main(args: list[str]) -> str:
    pass


@result_handler(no_ui=True)
def handle_result(
    args: list[str], answer: str, target_window_id: int, boss: Boss
) -> None:
    w = boss.window_id_map.get(target_window_id)

    if w is not None:
        image_paths = Path(args[1]).glob("**/*")

        images = [
            p for p in image_paths if p.suffix.lower() in SUPPORTED_IMAGE_FORMATS
        ]

        selected_image = choice(images)

        boss.call_remote_control(w, ("set-window-logo", "--self", str(selected_logo)))
