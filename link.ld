ENTRY(kernel_main)

SECTIONS
{
    /* Load kernel at 1 MB */
    . = 1M;

    /* Multiboot header */
    .multiboot :
    {
        *(.multiboot)
    }

    /* Kernel text (code) section */
    .text :
    {
        *(.text)
    }

    /* Kernel read-only data */
    .rodata :
    {
        *(.rodata)
    }

    /* Kernel data (initialized data) */
    .data :
    {
        *(.data)
    }

    /* Kernel BSS (uninitialized data) */
    .bss :
    {
        *(.bss COMMON)
    }
}
