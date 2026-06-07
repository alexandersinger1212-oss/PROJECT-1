# PROJECT-1

In this repo I created a simple file parser as an exercise in Linux Bash scripting.

Before building the actual script I did two simple exercises:
- `loop_numbers.sh` — looping through a number range
- `loop_files.sh` — looping through files in a directory

The actual project is `File_Parser.sh`.

The other four directories represent the finished product and contain dummy files that my script organised. The files represent different projects on a server that are not categorised or placed in their parent folder.

The script also handles edge cases — files without proper project name information end up in the `UNKNOWN` directory.

# What I learned

- Bash loops and conditionals
- String splitting with IFS
- Array indexing
- Handling edge cases in filenames

## How to run

```bash
bash File_Parser.sh
```
