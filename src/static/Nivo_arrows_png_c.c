// Thanks, http://stupefydeveloper.blogspot.ru/2008/08/cc-embed-binary-data-into-elf.html
#include <urweb.h>
#include <stdio.h>
#define BLOBSZ 824
static char blob[BLOBSZ];
uw_Basis_blob uw_Nivo_arrows_png_c_binary (uw_context ctx, uw_unit unit)
{
  uw_Basis_blob uwblob;
  uwblob.data = &blob[0];
  uwblob.size = BLOBSZ;
  return uwblob;
}

uw_Basis_string uw_Nivo_arrows_png_c_text (uw_context ctx, uw_unit unit) {
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
0x89 ,0x50 ,0x4E ,0x47 ,0x0D ,0x0A ,0x1A ,0x0A ,0x00 ,0x00 ,0x00 ,0x0D ,0x49 ,0x48 ,0x44 ,0x52 ,0x00 ,0x00 ,0x00 ,0x3C ,0x00 ,0x00 ,0x00 ,0x1E ,0x08 ,0x06 ,0x00 ,0x00 ,0x00 ,0x70 ,0x98 ,0x7D ,0x4F ,0x00 ,0x00 ,0x00 ,0x09 ,0x70 ,0x48 ,0x59 ,0x73 ,0x00 ,0x00 ,0x0B ,0x13 ,0x00 ,0x00 ,0x0B ,0x13 ,0x01 ,0x00 ,0x9A ,0x9C ,0x18 ,0x00 ,0x00 ,0x00 ,0x20 ,0x63 ,0x48 ,0x52 ,0x4D ,0x00 ,0x00 ,0x7A ,0x25 ,0x00 ,0x00 ,0x80 ,0x83 ,0x00 ,0x00 ,0xF9 ,0xFF ,0x00 ,0x00 ,0x80 ,0xE9 ,0x00 ,0x00 ,0x75 ,0x30 ,0x00 ,0x00 ,0xEA ,0x60 ,0x00 ,0x00 ,0x3A ,0x98 ,0x00 ,0x00 ,0x17 ,0x6F ,0x92 ,0x5F ,0xC5 ,0x46 ,0x00 ,0x00 ,0x02 ,0xBE ,0x49 ,0x44 ,0x41 ,0x54 ,0x78 ,0xDA ,0xD4 ,0x99 ,0xAF ,0x73 ,0xE2 ,0x40 ,0x14 ,0xC7 ,0x3F ,0x64 ,0x98 ,0x21 ,0x2E ,0xAE ,0x71 ,0x38 ,0x50 ,0x87 ,0xEB ,0xB9 ,0xBA ,0x38 ,0x70 ,0x75 ,0x95 ,0xE7 ,0xEE ,0xBF ,0xAA ,0xBB ,0xBA ,0x73 ,0xE0 ,0xE2 ,0x5A ,0x05 ,0x0E ,0x54 ,0xCF ,0xC5 ,0x05 ,0x87 ,0x4B ,0x15 ,0x15 ,0xBC ,0xCC ,0xA4 ,0xB9 ,0x6C ,0xF6 ,0xED ,0x66 ,0x73 ,0x33 ,0xF7 ,0x66 ,0x32 ,0x30 ,0x21 ,0xE4 ,0xED ,0x77 ,0x77 ,0xBF ,0xDF ,0xF7 ,0x63 ,0x27 ,0xD7 ,0xEB ,0x15 ,0xA5 ,0xC5 ,0xC0 ,0x1D ,0x30 ,0xEF ,0xF8 ,0xED ,0x02 ,0x9C ,0x81 ,0x92 ,0x71 ,0x2C ,0x15 ,0xDF ,0x49 ,0xC7 ,0x6F ,0x85 ,0xF8 ,0xAE ,0x34 ,0x2F ,0x9A ,0x2A ,0x9E ,0x59 ,0x02 ,0xDF ,0xE4 ,0xD3 ,0x66 ,0x17 ,0xE0 ,0x08 ,0x1C ,0xB4 ,0x03 ,0xB0 ,0x4C ,0xF0 ,0x3D ,0xB0 ,0x32 ,0x00 ,0x6D ,0xDB ,0xBB ,0xF8 ,0x2D ,0xFA ,0x1E ,0x9A ,0xF4 ,0xAC ,0x70 ,0x0A ,0x64 ,0x86 ,0x15 ,0xB5 ,0x59 ,0x25 ,0xCE ,0x5F ,0x3D ,0xC1 ,0x3E ,0x08 ,0xD8 ,0xD8 ,0xE3 ,0xBF ,0x05 ,0x90 ,0x9B ,0x76 ,0x9B ,0x09 ,0xF0 ,0x77 ,0x01 ,0x3B ,0xD4 ,0x4A ,0xE0 ,0xB7 ,0xAC ,0xBC ,0xC6 ,0x12 ,0xE0 ,0x51 ,0x26 ,0x7B ,0xA8 ,0xE5 ,0xC0 ,0x5E ,0x03 ,0x78 ,0x23 ,0xDB ,0x28 ,0x94 ,0x55 ,0xC0 ,0x8B ,0x82 ,0xDF ,0x29 ,0xF0 ,0xE4 ,0xB9 ,0xAA ,0x26 ,0x3B ,0x02 ,0xDB ,0xE6 ,0x8D ,0xA8 ,0xF5 ,0x40 ,0x16 ,0x18 ,0x6C ,0xCD ,0xC5 ,0x27 ,0x0B ,0x0F ,0x93 ,0x11 ,0xC0 ,0x22 ,0x58 ,0x32 ,0x13 ,0xE0 ,0xA5 ,0x6C ,0xE5 ,0x31 ,0x2C ,0x96 ,0xAD ,0x6A ,0xB2 ,0xC7 ,0x11 ,0xC0 ,0x36 ,0xE9 ,0xB9 ,0x6C ,0x03 ,0x8E ,0x81 ,0xB5 ,0x07 ,0x3F ,0x5D ,0x43 ,0xCB ,0x83 ,0x41 ,0xA0 ,0xD2 ,0x91 ,0x7D ,0xAF ,0xEB ,0x09 ,0xAD ,0x01 ,0xBB ,0x2A ,0x62 ,0x2E ,0x97 ,0xAB ,0xB5 ,0xFD ,0x24 ,0x72 ,0xCF ,0x47 ,0x90 ,0x72 ,0xC7 ,0x1D ,0x76 ,0x5F ,0x03 ,0x8E ,0x1D ,0x9D ,0x6E ,0xBB ,0xD4 ,0xCF ,0xD5 ,0x71 ,0x83 ,0x63 ,0xBE ,0x5B ,0x79 ,0xDF ,0x16 ,0x24 ,0xCD ,0x64 ,0x47 ,0xC0 ,0x42 ,0xE9 ,0xB4 ,0x02 ,0x9E ,0x45 ,0xF9 ,0x86 ,0x0A ,0x49 ,0xD7 ,0x77 ,0x5F ,0x15 ,0x7E ,0x56 ,0x26 ,0x39 ,0x31 ,0xB0 ,0xA8 ,0x01 ,0x6B ,0x38 ,0xF3 ,0x42 ,0x98 ,0xD4 ,0x31 ,0x11 ,0xCE ,0xA6 ,0xCA ,0x0C ,0x2A ,0xE4 ,0xD8 ,0x16 ,0x91 ,0x42 ,0x30 ,0x42 ,0x82 ,0xAD ,0xED ,0x4E ,0xAE ,0x50 ,0xA6 ,0x1D ,0x63 ,0x3A ,0xB5 ,0xCC ,0xF2 ,0xB1 ,0x87 ,0x27 ,0x67 ,0xE0 ,0x97 ,0x42 ,0x99 ,0x33 ,0xC3 ,0x2A ,0xF7 ,0x09 ,0x92 ,0x6D ,0xE0 ,0xE7 ,0x1E ,0xCA ,0xF5 ,0x25 ,0x4E ,0xC9 ,0xD4 ,0x22 ,0x0A ,0xB9 ,0x85 ,0xD3 ,0xC5 ,0x08 ,0x71 ,0xB3 ,0x1C ,0xF8 ,0xDE ,0xAD ,0x8C ,0xAD ,0x33 ,0xA7 ,0x88 ,0x7A ,0xAA ,0x9E ,0x37 ,0xFE ,0x5F ,0x7B ,0x33 ,0xE5 ,0xEF ,0x51 ,0x8F ,0xB0 ,0xFC ,0x0C ,0x94 ,0xC4 ,0xFF ,0x6B ,0x4B ,0x65 ,0xEC ,0x89 ,0x6B ,0x3D ,0x5C ,0xE7 ,0xC0 ,0x3B ,0xA9 ,0x35 ,0xB5 ,0xFC ,0x6C ,0xDA ,0xCC ,0x63 ,0xC0 ,0x19 ,0xF0 ,0xA1 ,0x48 ,0x3C ,0x4A ,0x43 ,0xED ,0xBE ,0xEE ,0x0B ,0xB3 ,0x53 ,0xE1 ,0xCB ,0xDC ,0x92 ,0x03 ,0x6F ,0x3B ,0xE2 ,0xEF ,0xCC ,0xB3 ,0x56 ,0xC6 ,0xC2 ,0x51 ,0xCD ,0xAE ,0x9A ,0x19 ,0xE2 ,0xFB ,0xC6 ,0xE6 ,0x37 ,0x52 ,0x86 ,0x9B ,0x4D ,0xA0 ,0xFA ,0xB8 ,0xA9 ,0xB2 ,0xE7 ,0x80 ,0xEF ,0xCB ,0x14 ,0x60 ,0x01 ,0xCA ,0x08 ,0x38 ,0x39 ,0x54 ,0x1D ,0x9B ,0x00 ,0x55 ,0xCD ,0xBB ,0xA8 ,0x68 ,0x65 ,0xA0 ,0x8A ,0x6B ,0xAA ,0xBA ,0x71 ,0xA8 ,0xF2 ,0x4E ,0x91 ,0x63 ,0x18 ,0x58 ,0x05 ,0xA8 ,0x5B ,0x0F ,0x86 ,0xEF ,0xBE ,0x75 ,0xF6 ,0xCA ,0x81 ,0x46 ,0x65 ,0xAD ,0xD2 ,0x2E ,0xBD ,0xA7 ,0x14 ,0xF8 ,0xE1 ,0xA9 ,0xE0 ,0x45 ,0x6B ,0x72 ,0x0B ,0xCF ,0x98 ,0xEB ,0x33 ,0x86 ,0xD7 ,0x66 ,0x58 ,0x2A ,0x1C ,0xB7 ,0x57 ,0xE2 ,0xC9 ,0xE9 ,0x5C ,0x79 ,0x4F ,0xC3 ,0xD9 ,0xC4 ,0x91 ,0x46 ,0x45 ,0x3B ,0x0E ,0xEF ,0xD0 ,0x37 ,0xDB ,0xF0 ,0x04 ,0x5B ,0x1A ,0x32 ,0xAB ,0x7C ,0x44 ,0xBF ,0x17 ,0xC1 ,0xF6 ,0x57 ,0xE2 ,0x51 ,0x71 ,0xEB ,0x30 ,0x56 ,0x23 ,0x38 ,0x3D ,0x5A ,0x6A ,0xE8 ,0x7D ,0x80 ,0xB2 ,0xD3 ,0x94 ,0xFE ,0x7E ,0xC1 ,0xD4 ,0xD5 ,0xB5 ,0x4C ,0x25 ,0xF6 ,0x26 ,0x81 ,0x9C ,0xEE ,0x1D ,0x56 ,0x30 ,0x23 ,0x5C ,0x5F ,0xED ,0x22 ,0x60 ,0xBF ,0xEC ,0x2A ,0x53 ,0x5F ,0xBA ,0xEE ,0x71 ,0x2D ,0x07 ,0xCE ,0xEE ,0xCE ,0x23 ,0xF4 ,0x58 ,0xB3 ,0x25 ,0x25 ,0x67 ,0x77 ,0x5D ,0xBB ,0x75 ,0x62 ,0x39 ,0x5B ,0x9A ,0x73 ,0x6B ,0xB2 ,0xCD ,0x1D ,0x81 ,0x1E ,0x18 ,0x76 ,0xDC ,0x52 ,0xB7 ,0x82 ,0x5C ,0x7B ,0x6D ,0x85 ,0xA8 ,0xB1 ,0x51 ,0xF9 ,0x27 ,0xCA ,0xC3 ,0xB4 ,0x94 ,0xDB ,0xF9 ,0x52 ,0x8A ,0xF9 ,0x30 ,0xAD ,0x04 ,0xFE ,0xC8 ,0x15 ,0x4A ,0x07 ,0x62 ,0xE9 ,0xC8 ,0x2C ,0x7A ,0x3A ,0x24 ,0x85 ,0xF8 ,0x3E ,0x69 ,0xB2 ,0xC6 ,0xCF ,0x01 ,0x00 ,0xE6 ,0x7A ,0xB9 ,0xBD ,0xB7 ,0xA7 ,0x3C ,0x1E ,0x00 ,0x00 ,0x00 ,0x00 ,0x49 ,0x45 ,0x4E ,0x44 ,0xAE ,0x42 ,0x60 ,0x82 ,};

