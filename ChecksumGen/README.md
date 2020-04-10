Ensure you have a toolchain installed for the AllWinner A20 <TODO : Get the link>

Assemble and sign your code with the following commands.
```
arm-none-eabi-as.exe -o out.elf main.s
arm-none-eabi-objcopy.exe -O binary out.elf  out.bin
ChecksumGen.exe out.bin out.raw
```

Then use the SUSE Studio Image writer on Windows to actually send the image to the card that will be used to boot the CubieTruck.

See http://www.cubieforums.com/index.php?topic=2761.0 for example A20 code.
