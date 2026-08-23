# Home Manager configuration

Standalone Home Manager configuration for `robbin`. System-wide NixOS settings
live separately in `/etc/nixos`.

## Commands

Apply the current configuration:

```sh
just switch
```

Format and validate it:

```sh
just format
just check
```

Update all flake inputs, validate, and activate a new generation:

```sh
just update
```

Remove old user generations and unreachable store paths:

```sh
just clean
```

## Layout

- `justfile`: formatting, validation, activation, update, and cleanup commands
- `home.nix`: user identity, state version, and module imports
- `modules/desktop.nix`: graphical programs, fonts, and desktop services
- `modules/git.nix`: Git and Delta configuration
- `modules/packages.nix`: packages without dedicated Home Manager configuration
- `modules/shell.nix`: command-line programs and shell integrations

Keep `home.stateVersion` unchanged unless intentionally performing a Home
Manager state migration.
