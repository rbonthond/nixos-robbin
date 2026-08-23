set shell := ["bash", "-euo", "pipefail", "-c"]

config_dir := justfile_directory()

default:
    @just --list

[private]
banner text:
    @echo
    @if command -v figlet >/dev/null 2>&1; then \
        figlet -k -w 132 -f standard "{{ text }}" | sed -e 's/^/# /'; \
    else \
        printf '# %s\n' "{{ text }}"; \
    fi
    @echo

# Format the Nix configuration.
format:
    @just banner "Format"
    nix fmt "{{ config_dir }}"

# Evaluate all flake checks.
check:
    @just banner "Validate"
    nix flake check "{{ config_dir }}"

# Activate the current Home Manager configuration.
switch:
    @just banner "Home Manager"
    home-manager switch --flake "{{ config_dir }}#robbin"

# Update flake inputs, validate, and activate a new generation.
update:
    @just banner "Flake Update"
    nix flake update --flake "{{ config_dir }}"
    @just check
    @just switch
    @just banner "Recent Generations"
    @home-manager generations | sed -n '1,2p'

# Remove old generations and unreachable store paths.
clean:
    @just banner "Remove Old Generations"
    nix-collect-garbage --delete-old
