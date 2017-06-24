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

# filesystem
__fish_btrfs_sub filesystem df "Show space usage information for a mount point."
__fish_btrfs_sub filesystem du "Summarize disk usage of each file."
__fish_btrfs_sub filesystem show "Show the structure of a filesystem."
__fish_btrfs_sub filesystem sync "Force a sync on a filesystem."
__fish_btrfs_sub filesystem defragment "Defragment a file or a directory."
__fish_btrfs_sub filesystem resize "Resize a filesystem."
__fish_btrfs_sub filesystem label "Get or change the label of a filesystem."
__fish_btrfs_sub filesystem usage "Show detailed information about internal filesystem usage."




