#ifndef __CPU_H__
#define __CPU_H__

#include <cstdint>

class cpu5a22{

  typedef uint_least8_t u8;
  typedef uint_least16_t u16;

  private:
  /* Register reset value */ //TODO research the values
  const u16 reset_A = 0x00;
  const u16 reset_X = 0x00;
  const u16 reset_Y = 0x00;

  /* Registers */
  u16 A;  // Acumulator
  u16 X;  // X-index
  u16 Y;  // Y-index
  u16 D;  // Direct Page (Zero page)
  u16 SP; // Stack pointer

};

#endif //__CPU_H__
