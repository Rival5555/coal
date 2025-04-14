# COAL Labs

A comprehensive repository for Computer Organization and Assembly Language (COAL) laboratory exercises and resources.

## Overview

This repository contains a collection of laboratory exercises, code examples, and resources for learning Computer Organization and Assembly Language concepts. The materials are designed to help students understand fundamental principles of computer architecture, digital logic, and low-level programming.

## Features

- Assembly language programming exercises
- Computer organization concepts and demonstrations
- Processor architecture simulations
- Memory management examples
- Digital logic circuit implementations
- I/O operations examples
- Performance optimization techniques

## Key Topics Covered

- Assembly Language Fundamentals
- Instruction Set Architecture (ISA)
- Memory Addressing Modes
- Arithmetic and Logic Operations
- Control Flow Instructions
- Subroutines and Stack Operations
- Interrupts and Exception Handling
- Memory Hierarchy and Cache Organization
- I/O Interfacing
- Pipelining and Parallelism

## Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/coal-labs.git

# Navigate to the repository directory
cd coal-labs

# Install dependencies (if any)
pip install -r requirements.txt
```

## Usage

Each lab exercise is contained in its own directory with complete instructions. Example:

```bash
# Navigate to a specific lab
cd labs/01-intro-to-assembly

# Run the assembly code using an appropriate simulator
# For MASM (Microsoft Macro Assembler):
ml /c /Zd /coff example.asm
link /subsystem:console example.obj

# For NASM (Netwide Assembler):
nasm -f elf64 example.asm
gcc -no-pie -o example example.o
./example
```



## Supported Platforms and Toolchains

This repository includes examples for multiple assembly languages and platforms:

- x86 and x86-64 (MASM, NASM, GAS)
- ARM (GNU Assembler)
- MIPS (MARS, SPIM)
- RISC-V

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/new-lab`)
3. Commit your changes (`git commit -m 'Add new lab on cache optimization'`)
4. Push to the branch (`git push origin feature/new-lab`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

Your Name - [your.email@example.com](mailto:hassanali93r@gmail.com)

Project Link: [https://github.com/yourusername/coal-labs](https://github.com/Rival5555/coal-labs)

## Acknowledgments

- Course instructors and teaching assistants
- Open source assembly language tools and simulators
- Reference textbooks on computer organization and assembly language
- Online educational resources and communities
