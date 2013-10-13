// Thanks, http://stupefydeveloper.blogspot.ru/2008/08/cc-embed-binary-data-into-elf.html
#include <urweb.h>
#include <stdio.h>
#define BLOBSZ 863
static char blob[BLOBSZ];
uw_Basis_blob uw_Flag_jp_gif_c_binary (uw_context ctx, uw_unit unit)
{
  uw_Basis_blob uwblob;
  uwblob.data = &blob[0];
  uwblob.size = BLOBSZ;
  return uwblob;
}

uw_Basis_string uw_Flag_jp_gif_c_text (uw_context ctx, uw_unit unit) {
  char* data = &blob[0];
  size_t size = sizeof(blob);
  char * c = uw_malloc(ctx, size+1);
  char * write = c;
  int i;
  for (i = 0; i < size; i++) {
    *write =  data[i];
    if (*write == '\0')
    *write = '\n';
    *write++;
  }
  *write=0;
  return c;
  }


static char blob[BLOBSZ] = {
0x47 ,0x49 ,0x46 ,0x38 ,0x39 ,0x61 ,0x10 ,0x00 ,0x10 ,0x00 ,0xF7 ,0x00 ,0x00 ,0x04 ,0x02 ,0x04 ,0xFC ,0xFE ,0xFC ,0xFC ,0x02 ,0x04 ,0x77 ,0x00 ,0x00 ,0x08 ,0x00 ,0x00 ,0x50 ,0x00 ,0x00 ,0x15 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x34 ,0xD8 ,0x00 ,0x00 ,0x05 ,0x00 ,0x00 ,0x15 ,0x00 ,0xC0 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x7C ,0x00 ,0x00 ,0x20 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x16 ,0x00 ,0x00 ,0x20 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x44 ,0x80 ,0xC4 ,0x00 ,0x3E ,0xA3 ,0x00 ,0x39 ,0x12 ,0x00 ,0x00 ,0x00 ,0x56 ,0xB0 ,0x00 ,0x00 ,0xA2 ,0x00 ,0x00 ,0x43 ,0x15 ,0x00 ,0x43 ,0x00 ,0xB0 ,0x03 ,0xE6 ,0x02 ,0x00 ,0x17 ,0x00 ,0x00 ,0xF5 ,0x00 ,0x00 ,0x77 ,0x00 ,0x00 ,0x66 ,0x03 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x04 ,0x00 ,0xA8 ,0xA2 ,0x00 ,0x19 ,0x12 ,0x00 ,0x15 ,0x00 ,0x00 ,0x00 ,0x53 ,0x00 ,0x00 ,0x21 ,0x00 ,0x00 ,0xE7 ,0x00 ,0x15 ,0x77 ,0x00 ,0x00 ,0x00 ,0x22 ,0xD0 ,0x00 ,0xEC ,0x02 ,0x01 ,0xFD ,0x18 ,0x00 ,0x7F ,0x00 ,0x00 ,0x02 ,0x9C ,0x00 ,0x00 ,0xA3 ,0x15 ,0x00 ,0x12 ,0x00 ,0x00 ,0x00 ,0x38 ,0x22 ,0x00 ,0xA4 ,0x00 ,0x00 ,0x12 ,0x08 ,0x00 ,0x00 ,0x02 ,0x00 ,0x37 ,0xC9 ,0xE4 ,0xB6 ,0x1D ,0xA5 ,0x4B ,0xF5 ,0x12 ,0x00 ,0x77 ,0x00 ,0x66 ,0x45 ,0x05 ,0x00 ,0x00 ,0x90 ,0x00 ,0x00 ,0xF7 ,0x00 ,0x01 ,0x77 ,0x50 ,0x22 ,0xF0 ,0xA4 ,0x00 ,0xD5 ,0x12 ,0x00 ,0xF6 ,0x00 ,0x00 ,0x77 ,0x24 ,0x11 ,0xFF ,0xA4 ,0x00 ,0xFF ,0x12 ,0x00 ,0xFF ,0x00 ,0x00 ,0xFF ,0x72 ,0x00 ,0xE6 ,0x72 ,0xEC ,0x17 ,0x4E ,0xFD ,0xF5 ,0x00 ,0x7F ,0x77 ,0xE8 ,0x22 ,0x78 ,0xFF ,0x00 ,0x17 ,0xFF ,0x24 ,0xF5 ,0xFF ,0x00 ,0x77 ,0x00 ,0x00 ,0xB2 ,0x00 ,0xA3 ,0x17 ,0x00 ,0x12 ,0xF5 ,0x00 ,0x00 ,0x77 ,0x58 ,0x00 ,0x00 ,0xB5 ,0x00 ,0x00 ,0x4B ,0x15 ,0x00 ,0x00 ,0x00 ,0x00 ,0xD0 ,0xE6 ,0xC8 ,0xB0 ,0x17 ,0x00 ,0x12 ,0xF5 ,0x2C ,0x00 ,0x77 ,0x01 ,0x18 ,0x45 ,0x04 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x50 ,0x78 ,0x00 ,0xA4 ,0x13 ,0x00 ,0x12 ,0x15 ,0x00 ,0x00 ,0x00 ,0x00 ,0x24 ,0x00 ,0x10 ,0xA4 ,0x00 ,0xA6 ,0x12 ,0x15 ,0x12 ,0x00 ,0x00 ,0x00 ,0xD0 ,0x30 ,0x05 ,0xB0 ,0xAD ,0x90 ,0x12 ,0x18 ,0xF7 ,0x00 ,0x00 ,0x77 ,0x00 ,0xD8 ,0xC0 ,0x00 ,0xA2 ,0x00 ,0x00 ,0x12 ,0x2C ,0x00 ,0x00 ,0x01 ,0xD0 ,0x40 ,0x41 ,0x02 ,0x39 ,0x01 ,0x18 ,0xF5 ,0x00 ,0x00 ,0x77 ,0x00 ,0xFF ,0x20 ,0x6C ,0xFF ,0xA5 ,0x5B ,0xFF ,0x12 ,0xE7 ,0xFF ,0x00 ,0x77 ,0x00 ,0x05 ,0x00 ,0x00 ,0x90 ,0x00 ,0x00 ,0xF7 ,0x00 ,0x00 ,0x77 ,0x00 ,0x00 ,0xF0 ,0xD0 ,0x00 ,0xD5 ,0x02 ,0x00 ,0xF6 ,0x18 ,0x00 ,0x77 ,0x00 ,0x00 ,0xFF ,0xD0 ,0x00 ,0xFF ,0x02 ,0x00 ,0xFF ,0x18 ,0x00 ,0xFF ,0x00 ,0x6B ,0xE6 ,0x00 ,0x00 ,0x17 ,0x00 ,0x00 ,0xF5 ,0x18 ,0x00 ,0x77 ,0x00 ,0x58 ,0x78 ,0x00 ,0x03 ,0x17 ,0x00 ,0x00 ,0xF5 ,0x00 ,0x00 ,0x77 ,0x00 ,0x06 ,0xB2 ,0x07 ,0xF6 ,0x17 ,0x00 ,0xE6 ,0xF5 ,0x00 ,0x77 ,0x77 ,0x00 ,0x0F ,0x00 ,0x00 ,0x1E ,0x00 ,0x00 ,0xE7 ,0x00 ,0x00 ,0x77 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x01 ,0xEC ,0x00 ,0x00 ,0xFD ,0x00 ,0x00 ,0x7F ,0x00 ,0x08 ,0x48 ,0x00 ,0x50 ,0xA3 ,0x00 ,0x01 ,0x12 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0xC8 ,0x00 ,0x00 ,0x28 ,0x00 ,0x15 ,0xE7 ,0x00 ,0x00 ,0x77 ,0x00 ,0x78 ,0x00 ,0x00 ,0xA1 ,0x00 ,0x00 ,0x12 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x6C ,0x00 ,0x00 ,0x5B ,0x00 ,0x00 ,0xE7 ,0x00 ,0x00 ,0x77 ,0x3C ,0x08 ,0x18 ,0xF9 ,0x50 ,0x00 ,0x12 ,0x15 ,0x00 ,0x00 ,0x00 ,0x00 ,0x05 ,0x00 ,0xFF ,0x90 ,0x01 ,0xFF ,0xF7 ,0x00 ,0xFF ,0x77 ,0x00 ,0xFF ,0xC8 ,0x04 ,0x18 ,0xD5 ,0x29 ,0x00 ,0xF6 ,0xE7 ,0x00 ,0x77 ,0x77 ,0x00 ,0xFF ,0x68 ,0xD0 ,0xFF ,0xA3 ,0xB0 ,0xFF ,0x12 ,0x12 ,0xFF ,0x00 ,0x00 ,0x6A ,0x64 ,0x00 ,0x16 ,0x2F ,0x00 ,0xF5 ,0xE8 ,0x00 ,0x77 ,0x77 ,0x00 ,0xE0 ,0x00 ,0x70 ,0x18 ,0x00 ,0xA4 ,0xE7 ,0x00 ,0x12 ,0x77 ,0x00 ,0x00 ,0x00 ,0x00 ,0xAE ,0x00 ,0x00 ,0x81 ,0x15 ,0x00 ,0x4B ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x50 ,0x00 ,0x00 ,0xA4 ,0x00 ,0x00 ,0x12 ,0x00 ,0x00 ,0x00 ,0x08 ,0xD0 ,0x73 ,0x50 ,0x02 ,0x72 ,0x15 ,0x18 ,0x4E ,0x00 ,0x00 ,0x00 ,0x00 ,0x6C ,0x84 ,0x01 ,0xA4 ,0xA4 ,0x00 ,0x12 ,0x12 ,0x00 ,0x00 ,0x00 ,0x64 ,0x98 ,0x00 ,0x2F ,0x10 ,0x00 ,0xE8 ,0xE7 ,0x00 ,0x77 ,0x77 ,0x00 ,0x00 ,0x34 ,0x10 ,0x00 ,0xA5 ,0xA7 ,0x00 ,0x4E ,0x12 ,0x00 ,0x00 ,0x00 ,0xB3 ,0x3C ,0xE6 ,0x3C ,0xA5 ,0xFF ,0xF5 ,0x4E ,0xFF ,0x77 ,0x00 ,0x7F ,0x00 ,0x00 ,0xF8 ,0x00 ,0x01 ,0xA6 ,0x00 ,0x00 ,0x12 ,0x00 ,0x00 ,0x00 ,0x08 ,0x68 ,0xD0 ,0x02 ,0xA3 ,0xB0 ,0x00 ,0x12 ,0x12 ,0x00 ,0x00 ,0x00 ,0x30 ,0x00 ,0x00 ,0xAD ,0x01 ,0x00 ,0x18 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x7A ,0x80 ,0xD0 ,0xA3 ,0xFB ,0xB0 ,0x12 ,0x4F ,0x12 ,0x00 ,0x00 ,0x00 ,0x00 ,0x00 ,0x6F ,0x00 ,0x35 ,0x10 ,0x00 ,0x00 ,0xE7 ,0x00 ,0x00 ,0x77 ,0x00 ,0x70 ,0xAF ,0x00 ,0x00 ,0x02 ,0x00 ,0x61 ,0x47 ,0x00 ,0x00 ,0x00 ,0x22 ,0x6E ,0xF8 ,0x00 ,0x00 ,0xA6 ,0x00 ,0x2E ,0x12 ,0x00 ,0x00 ,0x00 ,0x00 ,0x69 ,0xF8 ,0x00 ,0x00 ,0xA6 ,0x00 ,0x63 ,0x12 ,0x00 ,0x00 ,0x00 ,0x21 ,0xF9 ,0x04 ,0x01 ,0x00 ,0x00 ,0x00 ,0x00 ,0x2C ,0x00 ,0x00 ,0x00 ,0x00 ,0x10 ,0x00 ,0x10 ,0x00 ,0x07 ,0x08 ,0x3C ,0x00 ,0x01 ,0x08 ,0x1C ,0x48 ,0xB0 ,0xA0 ,0xC1 ,0x83 ,0x04 ,0x03 ,0x28 ,0x5C ,0xC8 ,0xB0 ,0x21 ,0x80 ,0x86 ,0x10 ,0x19 ,0x3E ,0x8C ,0x18 ,0x71 ,0x22 ,0x43 ,0x01 ,0x18 ,0x21 ,0x5A ,0x54 ,0x88 ,0xB1 ,0xA3 ,0xC3 ,0x86 ,0x1D ,0x33 ,0x4A ,0x04 ,0x19 ,0xF2 ,0x23 ,0x49 ,0x01 ,0x1A ,0x29 ,0x56 ,0x54 ,0x99 ,0x92 ,0xA5 ,0x44 ,0x84 ,0x30 ,0x63 ,0xCA ,0x8C ,0x19 ,0x10 ,0x00 ,0x3B ,};

