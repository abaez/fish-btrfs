# the commands
set __fish_btrfs_subcommands subvolume filesystem balance device \
  scrub check rescue restore inspect-internal property send receive \
  quota qgroup replace version

complete -c btrfs -xn "__fish_use_subcommand" -a "$__fish_btrfs_subcommands"
