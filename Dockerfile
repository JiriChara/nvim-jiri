FROM alpine:latest

RUN apk add --no-cache \
    ruby-dev \
    build-base \
    libffi-dev \
    make \
    gcc \
    g++ \
    bash \
    curl \
    git \
    ripgrep \
    neovim \
    neovim-doc \
    wl-clipboard \
    nodejs \
    npm \
    python3 \
    py3-pip

# Make Node/Python/Ruby providers working
RUN npm install -g neovim
RUN python3 -m venv /root/venv \
    && /root/venv/bin/pip install --upgrade pip \
    && /root/venv/bin/pip install pynvim
RUN gem install neovim

# Make the virtualenv available globally in container
ENV PATH="/root/venv/bin:$PATH"

WORKDIR /root/.config/nvim
