#### Notes:
- [firmware-analysis](https://book.hacktricks.xyz/hardware-physical-access/firmware-analysis)

#### Requirements:
- [binutils](https://www.gnu.org/software/binutils/)
- [binwalk](https://github.com/ReFirmLabs/binwalk)

#### Extract firmware:
```bash
mkdir firmware_data && binwalk -e firmware.bin -C firmware_data
```
