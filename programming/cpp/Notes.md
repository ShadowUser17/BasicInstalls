### GCC examples:
- Build regular executable file:
```bash
gcc -Wall -s -o testing main.c
```
- Build static executable file:
```bash
gcc -Wall -static -s -o testing main.c
```
- Build shared library:
```bash
gcc -Wall -fpic -c helpers.c
```
```bash
gcc -shared -s -o helpers.so helpers.o
```
- Build executable file with linking:
```bash
gcc -Wall -s -Lhelpers.so -lhelpers -o testing main.c
```

### Clang examples:
- Build regular executable file:
```bash
clang -Wall -s -o testing main.c
```
- Build static executable file:
```bash
clang -Wall -static -s -o testing main.c
```
- Build shared library:
```bash
clang -Wall -fpic -c helpers.c
```
```bash
clang -shared -s -o helpers.so helpers.o
```
- Build executable file with linking:
```bash
clang -Wall -s -Lhelpers.so -lhelpers -o testing main.c
```
