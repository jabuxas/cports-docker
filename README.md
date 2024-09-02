# cports-docker

Run [cports](https://github.com/chimera-linux/cports) and build pkgs inside chimera docker image.

## how?

- run `generate_config.sh` to set your repo directory correctly
- then run:

```bash
docker compose run --build --rm cports
```

- your cports repo will be in /cports, just do setup normally after that
