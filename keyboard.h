#ifndef AURORA_OS_KEYBOARD_H
#define AURORA_OS_KEYBOARD_H

#include "types.h"
#include "interrupts.h"
#include "port.h"

class KeyboardDriver : public InterruptHandler
{
    Port8Bit dataPort;
    Port8Bit commandPort;

public:
    KeyboardDriver(InterruptManager* manager);
    ~KeyboardDriver();

    virtual uint32_t HandleInterrupt(uint32_t esp);
};

#endif //AURORA_OS_KEYBOARD_H
