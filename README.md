# tmux-navi

> Calling [navi](https://github.com/denisidoro/navi) with [tmux](https://github.com/tmux/tmux).

The script is based and adapted from: https://github.com/denisidoro/navi/blob/master/docs/tmux.md.

The example provided uses `split-window` whereas I prefer using Tmux popup.

## :package: Installation
### Install through [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

Add plugin to the list of TPM plugins in `.tmux.conf`:

```bash
set -g @plugin 'l-lin/tmux-navi'
```

Hit `prefix + I` to fetch the plugin and source it.

## :rocket: Usage

`prefix + C-f` opens `navi` in a Tmux popup.

## :wrench: Configuration

Default configuration:

```bash
set -g @tmux-navi-key-binding 'C-f'
set -g @tmux-navi-width '90%'
set -g @tmux-navi-height '90%'
```

## :page_with_curl: License

[MIT](./LICENSE)

