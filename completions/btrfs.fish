# the commands
set __fish_btrfs_subcommands subvolume filesystem balance device \
  scrub check rescue restore inspect-internal property send receive \
  quota qgroup replace help version

complete -c btrfs -xn "__fish_use_subcommand" -a "$__fish_btrfs_subcommands"

complete -xc btrfs -l help -d "use --help as an argument for information on a specific group or command."
complete -xc btrfs -l version -d "Display btrfs-progs version."


# subvolume

complete -c btrfs -n "__fish_seen_subcommand_from subvolume" -xa create -d "Create a subvolume."
complete -c btrfs -n "__fish_seen_subcommand_from subvolume" -xa delete -d "Delete a subvolume."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa list -d "List subvolumes."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa snapshot -d "Create a snapshot of the subvolume."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa snapshot -d "Create a snapshot of the subvolume."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa get-default -d "Get the default subvolume of a filesystem."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa set-default -d "Set the default subvolume of a filesystem."
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa find-new -d "List the recently modified files in a filesystem"
complete -c btrfs -xn "__fish_seen_subcommand_from subvolume" -xa show -d "Set the default subvolume of a filesystem."







