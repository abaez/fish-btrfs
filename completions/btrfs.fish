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

# balance
__fish_btrfs_sub balance start "Balance chunks across the devices."
__fish_btrfs_sub balance pause "Pause running balance."
__fish_btrfs_sub balance cancel "Cancel running or paused balance."
__fish_btrfs_sub balance resume "Resume interrupted balance."
__fish_btrfs_sub balance status "Show status of running or paused balance."

# device
__fish_btrfs_sub device add "Add a device to a filesystem."
__fish_btrfs_sub device delete "Remove a device from a filesystem."
__fish_btrfs_sub device remove "Remove a device from a filesystem."
__fish_btrfs_sub device scan "Scan devices for a btrfs filesystem."
__fish_btrfs_sub device ready "Check device to see if it has all of its devices in cache for mounting."
__fish_btrfs_sub device stats "Show device IO error statistics."
__fish_btrfs_sub device usage "Show detailed information about internal allocations in devices."

# scrub
__fish_btrfs_sub scrub start "Start a new scrub."
__fish_btrfs_sub scrub cancel "Cancel a running scrub."
__fish_btrfs_sub scrub resume "Resume previously canceled or interrupted scrub."
__fish_btrfs_sub scrub status "Show status of running or finished scrub"

# rescue
__fish_btrfs_sub rescue chunk-recover "Recover the chunk tree by scanning the devices one by one."
__fish_btrfs_sub rescue super-recover "Recover bad superblocks from good copies."
__fish_btrfs_sub rescue zero-log "Clear the tree log."

# inspect-internal
__fish_btrfs_sub inspect-internal inode-resolve "Get file system paths for the given inode."
__fish_btrfs_sub inspect-internal logical-resolve "Get file system paths for the given logical address."
__fish_btrfs_sub inspect-internal subvolid-resolve "Get file system paths for the given subvolume ID."
__fish_btrfs_sub inspect-internal rootit "Get the tree ID of the containing subvolume of path."
__fish_btrfs_sub inspect-internal min-dev-size "Get the minium size the device can be shrunk to."
__fish_btrfs_sub inspect-internal dump-tree "Dump tree structures from a given device."
__fish_btrfs_sub inspect-internal dump-super "Dump superblock from a device in a textual form."
__fish_btrfs_sub inspect-internal tree-stats "Print various stats for trees."

# property
__fish_btrfs_sub property get "Gets a property from a btrfs object."
__fish_btrfs_sub property set "Sets a property from a btrfs object."

# quota
__fish_btrfs_sub quota enable "Enable a subvolume quota support for a filesystem."
__fish_btrfs_sub quota disable "Disable a subvolume quota support for a filesystem."
__fish_btrfs_sub quota rescan "Trash all qgroup numbers and scan the metadata again with the current config."

# qgrip
__fish_btrfs_sub qgrip assign "Assign SRC as the child qgroup of DST."
__fish_btrfs_sub qgrip remove "Remove a child qgroup SRC from DST."
__fish_btrfs_sub qgrip create "Create a subvolume quota group."
__fish_btrfs_sub qgrip destroy "Destroy a subvolume quota group."
__fish_btrfs_sub qgrip show "Show subvolume quota groups."
__fish_btrfs_sub qgrip limit "Set the limits a subvolume quota group."

# replace
__fish_btrfs_sub replace start "Replace device of a btrfs filesystem."
__fish_btrfs_sub replace status "Print status and progress information of a running device replace."
__fish_btrfs_sub replace cancel "Canel a running device replace operation."
