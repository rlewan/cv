# My CV

## Credits

This is forked from [Awesome-CV](https://github.com/posquit0/Awesome-CV). Kudos to [Byungjin Park](https://www.posquit0.com) for building and sharing such an amazing template! 🙏

## How to Use

### Requirements

[Docker](https://www.docker.com) needs to be running to build the outputs — I don't want to bother with LaTex dependencies.

### Building the PDFs

Command below does the trick:

```bash
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/docker-texlive-full make
```

It uses a fully blown LaTex setup so the image is pretty hefty (~2GB).
