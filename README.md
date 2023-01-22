# My CV

## Credits

This is forked from [Awesome-CV](https://github.com/posquit0/Awesome-CV). Kudos to [Byungjin Park](https://www.posquit0.com) for building and sharing such an amazing template! 🙏

## How to Use

### Requirements

[Docker](https://www.docker.com) needs to be running to build the outputs — I don't want to bother with LaTex dependencies.

### Building the PDFs

#### GitHub

[Here](https://github.com/rlewan/cv/actions/workflows/main.yml)'s the job to build them through GitHub actions.

#### Locally

Use the provided script as a wrapper around `make`, it will execute with the relevant Docker container:

```bash
./make.sh
```

It uses a fully blown LaTex setup so the image is pretty hefty (~2GB).
