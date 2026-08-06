# <p align=center> Lutils <p align=center> <img src="/LuaCoreutils/Lutils.png" alt="logo" width="150" />
Lutils (or Luacoreutils if youre a bore >:[) is my attempt at the implimentation of GNU Coreutils in Lua. Why? 🤷 idk funsies

## List of Utils:

### File utilities
- [ ] chcon – Changes file security context (SELinux)
- [ ] chgrp – Changes file group ownership
- [ ] chown – Changes file user ownership
- [ ] chmod – Changes file permissions
- [ ] cp – Copies files
- [ ] dd – Copies and converts file data
- [ ] df – Reports file system free space
- [ ] dir – Like ls -C -b; by default lists files in columns, sorted vertically
- [ ] dircolors – Configures colors used for ls output
- [ ] install – Copies files and sets file attributes
- [ ] ln – Creates a link to a file
- [ ] ls – Lists files
- [ ] mkdir – Creates directories 
- [ ] mkfifo – Creates named pipes (FIFOs)
- [ ] mknod – Creates block or character special files
- [ ] mktemp – Creates temporary regular files or directories
- [ ] mv – Moves and renames files
- [ ] realpath – Reports the absolute or relative path of a file
- [ ] rm – Deletes files
- [ ] rmdir – Deletes empty directories
- [ ] shred – Overwrites a file to hide its contents and optionally deletes it
- [ ] sync – Flushes file system buffers
- [ ] touch – Changes file timestamps, creating files if they do not exist
- [ ] truncate – Sets the size of a file via truncation or extension
- [ ] vdir – Like ls -l -b; by default lists files in long format

### Text utilities
- [ ] b2sum – Computes and checks BLAKE2b message digest
- [ ] base32 – Encodes or decodes base32
- [ ] base64 – Encodes or decodes base64
- [ ] basenc – Encodes or decodes various encodings including hexadecimal, base32, base64, and Z85
- [ ] cat – Concatenates files
- [ ] cksum – Report or compute the checksum of files
- [ ] comm – Compares two sorted files line by line
- [ ] csplit – Splits a file into sections determined by context lines
- [ ] cut – Removes sections from each line of files
- [ ] expand – Converts tabs to spaces
- [ ] fmt – Formats text
- [ ] fold – Wraps each input line to fit in specified width
- [ ] head – Outputs the first part of files
- [ ] join – Joins lines of two files on a common field
- [ ] md5sum – Computes and checks MD5 message digest
- [ ] nl – Numbers lines of files
- [ ] numfmt – Formats numbers
- [ ] od – Dumps files in octal and other formats
- [ ] paste – Merges lines of files
- [ ] ptx – Produces a permuted index of file contents
- [ ] pr – Paginates or columnates files
- [ ] sha1sum, sha224sum, sha256sum, sha384sum, sha512sum – Computes and checks SHA-1/SHA-2 message digests
- [ ] shuf – Generates random permutations
- [ ] sort – Sorts lines of text files
- [ ] split – Splits a file into pieces
- [ ] sum – Checksums and counts the blocks in a file
- [ ] tac – Concatenates files in reverse order, line by line
- [ ] tail – Outputs the last part of files
- [ ] tr – Translates or deletes characters
- [ ] tsort – Performs a topological sort
- [ ] unexpand – Converts spaces to tabs
- [ ] uniq – Removes duplicate lines from a sorted file
- [ ] wc – Reports the number of bytes, words, and lines in files

### Shell utilities
- [ ] arch – Reports machine hardware name (same as uname -m)
- [ ] basename – Removes the path prefix from a given pathname
- [ ] chroot – Changes the root directory
- [ ] date – Reports or sets the system date and time
- [ ] dirname – Strips non-directory suffix from file name
- [ ] du – Shows disk usage on file systems
- [ ] echo – Outputs text IN PROGRESS
- [ ] env – Reports and modifies environment variables
- [ ] expr – Evaluates expressions
- [ ] factor – Factors numbers
- [ ] false – Does nothing but exit with unsuccessful status
- [ ] groups – Reports the groups of which the user is a member
- [ ] hostid – Reports the numeric identifier for the current host
- [ ] id – Reports the real or effective UID and GID
- [ ] link – Creates a link to a file
- [ ] logname – Reports the user's login name
- [ ] nice – Modifies scheduling priority
- [ ] nohup – Allows a command to continue running after logging out
- [ ] nproc – Queries the number of (active) processors
- [ ] pathchk – Checks whether file names are valid or portable
- [ ] pinky – A lightweight version of finger
- [ ] printenv – Reports environment variables
- [ ] printf – Formats text
- [ ] pwd – Reports the current working directory
- [ ] readlink – Reports the value of a symbolic link
- [ ] runcon – Run command with specified security context
- [ ] seq – Reports a sequence of numbers
- [ ] sleep – Blocks (delays, waits) for a specified amount of time
- [ ] stat – Reports information about an inode
- [ ] stdbuf – Runs a command with custom standard streams configuration
- [ ] stty – Changes and reports terminal line settings
- [ ] tee – Sends output to multiple files
- [ ] test – Evaluates an expression
- [ ] timeout – Runs a command with a time limit
- [ ] true – Does nothing but exit with success status
- [ ] tty – Reports the terminal name
- [ ] uname – Reports system information
- [ ] unlink – Removes files via unlink() function
- [ ] uptime – Reports how long the system has been running
- [ ] users – Reports the user names of users currently logged into the current host
- [ ] who – Reports logged-in users NEXT
- [ ] whoami – Reports the effective userid
- [ ] yes – Outputs a string repeatedly
- [ ] [ – Synonym for test that enables expressions like [ expression ]

# License
uutils is licensed under the GNU GPLv3 License - see the LICENSE file for details
