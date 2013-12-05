/* Thanks, http://stupefydeveloper.blogspot.ru/2008/08/cc-embed-binary-data-into-elf.html */
#include <urweb.h>
#include <stdio.h>
#define BLOBSZ 310
static char blob[BLOBSZ];
uw_Basis_blob uw_Menu_jq_urs_c_binary (uw_context ctx, uw_unit unit)
{
  uw_Basis_blob uwblob;
  uwblob.data = &blob[0];
  uwblob.size = BLOBSZ;
  return uwblob;
}

uw_Basis_string uw_Menu_jq_urs_c_text (uw_context ctx, uw_unit unit) {
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
0x0A ,0x63 ,0x6F ,0x6E ,0x20 ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x20 ,0x3D ,0x20 ,0x50 ,0x61 ,0x67 ,0x65 ,0x2E ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x0A ,0x0A ,0x28 ,0x2A ,0x20 ,0x43 ,0x6F ,0x6E ,0x74 ,0x69 ,0x6E ,0x75 ,0x61 ,0x74 ,0x69 ,0x6F ,0x6E ,0x20 ,0x70 ,0x61 ,0x73 ,0x73 ,0x69 ,0x6E ,0x67 ,0x20 ,0x73 ,0x74 ,0x79 ,0x6C ,0x65 ,0x20 ,0x2A ,0x29 ,0x0A ,0x0A ,0x63 ,0x6F ,0x6E ,0x20 ,0x6E ,0x65 ,0x65 ,0x64 ,0x20 ,0x3D ,0x20 ,0x5B ,0x4A ,0x51 ,0x3D ,0x7B ,0x7D ,0x2C ,0x20 ,0x4A ,0x51 ,0x5F ,0x55 ,0x49 ,0x3D ,0x7B ,0x7D ,0x5D ,0x0A ,0x63 ,0x6F ,0x6E ,0x20 ,0x6F ,0x75 ,0x74 ,0x20 ,0x3D ,0x20 ,0x6E ,0x65 ,0x65 ,0x64 ,0x20 ,0x2B ,0x2B ,0x20 ,0x5B ,0x4A ,0x51 ,0x4D ,0x3D ,0x7B ,0x7D ,0x5D ,0x0A ,0x0A ,0x76 ,0x61 ,0x6C ,0x20 ,0x61 ,0x64 ,0x64 ,0x20 ,0x3A ,0x20 ,0x74 ,0x20 ,0x3A ,0x3A ,0x3A ,0x20 ,0x7B ,0x54 ,0x79 ,0x70 ,0x65 ,0x7D ,0x20 ,0x2D ,0x3E ,0x20 ,0x78 ,0x20 ,0x3A ,0x3A ,0x3A ,0x20 ,0x7B ,0x54 ,0x79 ,0x70 ,0x65 ,0x7D ,0x20 ,0x2D ,0x3E ,0x20 ,0x5B ,0x74 ,0x20 ,0x7E ,0x20 ,0x6F ,0x75 ,0x74 ,0x5D ,0x0A ,0x20 ,0x20 ,0x3D ,0x3E ,0x20 ,0x28 ,0x28 ,0x63 ,0x73 ,0x73 ,0x5F ,0x63 ,0x6C ,0x61 ,0x73 ,0x73 ,0x20 ,0x2D ,0x3E ,0x20 ,0x74 ,0x72 ,0x61 ,0x6E ,0x73 ,0x61 ,0x63 ,0x74 ,0x69 ,0x6F ,0x6E ,0x20 ,0x75 ,0x6E ,0x69 ,0x74 ,0x29 ,0x20 ,0x2D ,0x3E ,0x20 ,0x72 ,0x65 ,0x63 ,0x6F ,0x72 ,0x64 ,0x20 ,0x28 ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x20 ,0x28 ,0x74 ,0x20 ,0x2B ,0x2B ,0x20 ,0x6F ,0x75 ,0x74 ,0x29 ,0x29 ,0x20 ,0x2D ,0x3E ,0x20 ,0x72 ,0x65 ,0x63 ,0x6F ,0x72 ,0x64 ,0x20 ,0x28 ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x20 ,0x78 ,0x29 ,0x29 ,0x0A ,0x20 ,0x20 ,0x2D ,0x3E ,0x20 ,0x72 ,0x65 ,0x63 ,0x6F ,0x72 ,0x64 ,0x20 ,0x28 ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x20 ,0x28 ,0x74 ,0x20 ,0x2B ,0x2B ,0x20 ,0x6E ,0x65 ,0x65 ,0x64 ,0x29 ,0x29 ,0x0A ,0x20 ,0x20 ,0x2D ,0x3E ,0x20 ,0x72 ,0x65 ,0x63 ,0x6F ,0x72 ,0x64 ,0x20 ,0x28 ,0x64 ,0x70 ,0x61 ,0x67 ,0x65 ,0x20 ,0x78 ,0x29 ,0x0A ,};
