**INSTALL**
```
sudo apt-get install nasm xorriso qemu build-essential grub
```

***Build Error**

**Could not read from CDROM (code 0009)**

On a system that uses EFI to boot, you may see an error like this:

```
$ qemu-system-x86_64 -cdrom os.iso
Could not read from CDROM (code 0009)
```

The solution may be to install the grub-pc-bin package:

```
$ sudo apt-get install grub-pc-bin
```

After the install is complete, you will need to recreate the ISO file before trying QEMU again:

```
$ grub-mkrescue -o os.iso isofiles
$ qemu-system-x86_64 -cdrom os.iso
```


**Executable Error**

Error Code:

>0 - no_multiboot 

Multiboot is *not exist* or *invalid*.

>1 - no_cpuid 

CPUID not found.

>2 - no_long_mode 

X64-Mode not available for current CPU.
