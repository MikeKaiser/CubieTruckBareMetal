Ensure you have a toolchain installed for the AllWinner A20
https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/downloads
https://developer.arm.com/-/media/Files/downloads/gnu/11.2-2022.02/binrel/gcc-arm-11.2-2022.02-mingw-w64-i686-arm-none-eabi.exe

Assemble and sign your code with the following commands.
```
arm-none-eabi-as.exe -o out.elf main.s
arm-none-eabi-objcopy.exe -O binary out.elf  out.bin
```

Then sign your code with 
```
ChecksumGen.exe out.bin out.raw
```
and then use the SUSE Studio Image writer on Windows to actually send the image to the card that will be used to boot the CubieTruck.


OR

Sign and Upload you code with
```
ChecksumGen.exe -w out.bin Z:
```
where Z: is the drive name of the SDCard.


See http://www.cubieforums.com/index.php?topic=2761.0 for example A20 code.
