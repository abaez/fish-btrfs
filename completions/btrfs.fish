# the commands
set __fish_btrfs_subcommands subvolume filesystem balance device \
  scrub check rescue restore inspect-internal property send receive \
  quota qgroup replace help version

complete -c btrfs -xn "__fish_use_subcommand" -a "$__fish_btrfs_subcommands"

complete -xc btrfs -l help -d "use --help as an argument for information on a specific group or command."
complete -xc btrfs -l version -d "Display btrfs-progs version."


function __fish_btrfs_sub
  complete -c btrfs -xn "__fish_seen_subcommand_from $argv[1]" -xa $argv[2] -d $argv[3]
end

# subvolume
__fish_btrfs_sub subvolume create "Create a subvolume."
__fish_btrfs_sub subvolume delete "Delete a subvolume."
__fish_btrfs_sub subvolume list "List subvolumes."
__fish_btrfs_sub subvolume snapshot "Create a snapshot of the subvolume."
__fish_btrfs_sub subvolume get-default "Get the default subvolume of a filesystem."
__fish_btrfs_sub subvolume set-default "Set the default subvolume of a filesystem."
__fish_btrfs_sub subvolume find-new "List the recently modified files in a filesystem."
__fish_btrfs_sub subvolume show "Set the default subvolume of a filesystem."
__fish_btrfs_sub subvolume sync "Wait until given subvolume are completely removed from the filesystem."





