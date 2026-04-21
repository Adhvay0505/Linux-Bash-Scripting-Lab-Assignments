# Shell Script to Count Lines, Words, and Characters without using wc

## Introduction

In Linux, the `wc` command is commonly used to count lines, words, and characters in a file. However, understanding how to perform these operations manually using shell scripting helps students gain deeper insight into text processing, looping constructs, and command substitution. This knowledge is particularly useful in automation, log analysis, and cyber security scripting tasks.

The problem is to write a shell script that counts the number of lines, words, and characters in a given input file without using the `wc` command, using Bash scripting techniques and basic text-processing logic.

---

## Course Outcome Mapping

| CO | Description |
|----|-------------|
| CO2 | Ability to write Bash scripts for automation and text processing |
| CO4 | Application of scripting logic for control flow and computation |

---

## Learning Outcomes

| LO | Description |
|----|-------------|
| LO1 | Read file content line by line using shell scripting |
| LO2 | Count lines, words, and characters programmatically |
| LO3 | Use loops and conditional logic for text processing |
| LO4 | Understand internal working of text counting utilities |

---

## Theory

### Text Processing in Linux

Linux treats text as a stream of characters. Counting lines, words, and characters manually involves:
- Identifying newline characters for line count
- Splitting text based on whitespace for word count
- Counting individual characters

### Reading Files in Bash

The `while read` loop allows reading files line by line, making it suitable for counting operations.

### Commands Used

| Command | Description |
|---------|-------------|
| read | Read input line by line |
| for | Loop through words |
| expr / $(( )) | Arithmetic operations |
| echo | Display output |
| length | String length evaluation |

---

## Procedure

### Creating Sample Input File

1. Open the terminal.
2. Create a sample text file:
   ```
   nano sample.txt
   ```
3. Enter the following content:
   ```
   Linux is powerful
   Bash scripting is useful
   Cyber Security relies on Linux
   ```
4. Save and exit the editor.

### B. Writing the Shell Script

5. Create a script file:
   ```
   nano count_text.sh
   ```
6. Enter the following script:
   ```bash
   #!/bin/bash
   lines=0
   words=0
   chars=0
   while read line
   do
     lines=$((lines + 1))
     chars=$((chars + ${#line}))
     for word in $line
     do
       words=$((words + 1))
     done
   done < sample.txt
   echo "Number of lines: $lines"
   echo "Number of words: $words"
   echo "Number of characters: $chars"
   ```
7. Save and exit the editor.
8. Make the script executable:
   ```
   chmod +x count_text.sh
   ```

### C. Executing the Script

9. Run the script:
   ```
   ./count_text.sh
   ```

---

## Sample Execution

```bash
$ ./count_text.sh
Number of lines: 3
Number of words: 10
Number of characters: 79
```

---

## Expected Output

- [x] Correct number of lines displayed.
- [x] Accurate word count calculated.
- [x] Total number of characters counted correctly.

---

## Result

A shell script was successfully written and executed to count the number of lines, words, and characters in a file without using the `wc` command, demonstrating effective text processing using Bash scripting.

---

## Guidelines to Students

- Do not use `wc` command in this experiment.
- Ensure proper handling of spaces and empty lines.
- Use quotes when dealing with variables containing spaces.
- Validate output by comparing with `wc` (for learning only).

---

## Viva Questions

- What does the wc command do?
  - **Answer:** The `wc` (word count) command in Linux counts the number of lines, words, bytes, and characters in a file or text input. It can display counts individually using options like `-l` (lines), `-w` (words), `-c` (bytes), and `-m` (characters).

- How are lines counted in this script?
  - **Answer:** Lines are counted using a `while read line` loop. Each time a line is read from the file, the `lines` variable is incremented by 1: `lines=$((lines + 1))`.

- How are words identified in the script?
  - **Answer:** Words are identified using a `for word in $line` loop. The shell splits the line by whitespace (spaces, tabs) into individual words, and each word increments the `words` counter.

- How are characters counted without wc?
  - **Answer:** Characters are counted using `${#line}`, which is a Bash parameter expansion that returns the length (number of characters) of the string in the variable `line`. This is added to the `chars` counter for each line read.

- What is the use of while read loop?
  - **Answer:** The `while read` loop is used to read a file line by line. It reads each line from the input (file redirection `< sample.txt`) and processes it within the loop body. It's efficient for processing large files as it doesn't load the entire file into memory.

- How does ${#line} work?
  - **Answer:** `${#line}` is a Bash parameter expansion that returns the length of the string stored in the variable `line`. It counts the number of characters in the line, excluding the newline character.

- How can this script be extended for user input?
  - **Answer:** The script can be extended to accept a filename as a command-line argument (`$1`) so the user can specify which file to process. For example: `filename=${1:-sample.txt}` would use a default file or accept user input. It can also be modified to read from stdin if no file is provided.

---

## References

- Linux Man Pages: `man wc`, `man read`, `man expr`
- Introduction to Linux with Bash Scripting Lab (Dr. Rajesh Kumar)