OUTPUT_FORMAT("elf32-littlearm")
OUTPUT_ARCH(arm)

SECTIONS
{
    RCC_CR = 0x40023800;
    RCC_AHB1ENR = 0x40023830;
    RCC_AHB2ENR = 0x40023834;

    GPIOA_MODER = 0x40020000;
    GPIOA_PUPDR = 0x4002000c;
    GPIOA_IDR = 0x40020010;
    GPIOA_BSRR = 0x40020018;
    
    GPIOD_MODER = 0x40020c00;
    GPIOD_PUPDR = 0x4002c0c;
    GPIOD_IDR = 0x40020c10;
    GPIOD_BSRR = 0x40020c18;
    
    GPIOE_MODER = 0x40021000;
    GPIOE_PUPDR = 0x4002100c;
    GPIOE_IDR = 0x40021010;
    GPIOE_BSRR = 0x40021018;
    
    GPIOF_MODER = 0x40021400;
    GPIOF_PUPDR = 0x4002140c;
    GPIOF_IDR = 0x40021410;
    GPIOF_BSRR = 0x40021418;
    
    RNG_CR = 0x50060800;
    RNG_SR = 0x50060804;
    RNG_DR = 0x50060808;
    
    .vectors 0x08000000 :
    {
        LONG(0x20010000)
        LONG(run + 1)
        FILL(0)
    }

    .text 0x08000200 :
    {
        *(.text)
    }
}
