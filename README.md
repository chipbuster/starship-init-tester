# Starship Initialization Test Scripts

This project contains a set of simple scripts to check starship's initialization
procedure under bash.

We try to check a combination of one condition from each category (the Cartesian
product of the categories below).

#### Category 1: Binary File

- The binary is a normal file
- The binary is a symlink to the actual executable file

#### Category 2: Containing Directory

- The directory containing the binary is a normal directory
- The directory containing the binary is a symlink
- The directory containing the binary is a normal directory, but there are other
  symlinks in the path to the binary.

#### Category 3: Binary Path

- Starship is invoked as `starship` (clearly intended to be looked up in the PATH)
- Starship is invoked using a relative path
- Starship is invoked using an absolute path

#### Category 4: Change of Symlink Target

- The symlink target is removed in the middle of execution without another
  instance on the `PATH`.
- The symlink target is removed in the middle of shell execution, but another
  starship with the same name exists on the `PATH`.
- The symlink target is not changed during shell execution.
