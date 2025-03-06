# MinilibC

MinilibC is a reimplementation of standard C library functions in x86-64 Assembly, following the System V ABI.

## Features
This project includes Assembly implementations of the following C standard library functions:
- `memset`
- `memcpy`
- `memmove`
- `strcmp`
- `strncmp`
- `strcasecmp`
- `strchr`
- `strcspn`
- `strlen`
- `strpbrk`
- `strrchr`
- `strstr`

## Installation

To compile the library, simply run:

```sh
make
```

This will generate libasm.so, the shared library.

## Usage

To use the library in a C program, you need to link libasm.so. Here is an example:

```c
#include <stdio.h>
#include <string.h>

extern int strcmp(const char *s1, const char *s2);

int main(void) {
    const char *str1 = "Hello";
    const char *str2 = "Hello";
    
    if (strcmp(str1, str2) == 0)
        printf("Strings are equal\n");
    else
        printf("Strings are different\n");

    return 0;
}
```

## Compilation and execution

1. Compile the program and link it with libasm.so:
```sh
gcc main.c -L. -lasm -Wl,-rpath=.
```

2. Run the program with the library:
```sh
LD_LIBRARY_PATH=. ./a.out
```
