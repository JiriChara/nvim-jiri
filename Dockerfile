FROM alpine:latest

RUN apk add --no-cache neovim git curl bash

WORKDIR /root/.config/nvim

CMD ["nvim"]
