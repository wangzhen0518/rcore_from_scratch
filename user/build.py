import os
import argparse


def build(release: bool = False):
    BASE_ADDRESS = 0x80400000
    STEP = 0x20000
    linker = "src/linker.ld"

    app_id = 0
    apps = sorted(os.listdir("src/bin"))
    for app_id, app in enumerate(apps):
        app = app.split(".")[0]
        with open(linker, "r") as f:
            content = f.read()
        content_new = content.replace(
            hex(BASE_ADDRESS), hex(BASE_ADDRESS + app_id * STEP)
        )
        with open(linker, "w") as f:
            f.write(content_new)
        cmd = f"cargo build --bin {app}" + (" --release" if release else "")
        print(cmd)
        os.system(cmd)
        print(
            "[build.py] application %s start with address %s"
            % (app, hex(BASE_ADDRESS + app_id * STEP))
        )

        with open(linker, "w") as f:
            f.write(content)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--release", action="store_true")
    args = parser.parse_args()

    build(args.release)


if __name__ == "__main__":
    main()
