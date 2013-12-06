/* Thanks, http://stupefydeveloper.blogspot.ru/2008/08/cc-embed-binary-data-into-elf.html */
#include <urweb.h>
#include <stdio.h>
#define BLOBSZ 2329
static char blob[BLOBSZ];
uw_Basis_blob uw_Nivo_default_css_c_binary (uw_context ctx, uw_unit unit)
{
  uw_Basis_blob uwblob;
  uwblob.data = &blob[0];
  uwblob.size = BLOBSZ;
  return uwblob;
}

uw_Basis_string uw_Nivo_default_css_c_text (uw_context ctx, uw_unit unit) {
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
0x2F ,0x2A ,0x0D ,0x0A ,0x53 ,0x6B ,0x69 ,0x6E ,0x20 ,0x4E ,0x61 ,0x6D ,0x65 ,0x3A ,0x20 ,0x4E ,0x69 ,0x76 ,0x6F ,0x20 ,0x53 ,0x6C ,0x69 ,0x64 ,0x65 ,0x72 ,0x20 ,0x44 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x54 ,0x68 ,0x65 ,0x6D ,0x65 ,0x0D ,0x0A ,0x53 ,0x6B ,0x69 ,0x6E ,0x20 ,0x55 ,0x52 ,0x49 ,0x3A ,0x20 ,0x68 ,0x74 ,0x74 ,0x70 ,0x3A ,0x2F ,0x2F ,0x6E ,0x69 ,0x76 ,0x6F ,0x2E ,0x64 ,0x65 ,0x76 ,0x37 ,0x73 ,0x74 ,0x75 ,0x64 ,0x69 ,0x6F ,0x73 ,0x2E ,0x63 ,0x6F ,0x6D ,0x0D ,0x0A ,0x44 ,0x65 ,0x73 ,0x63 ,0x72 ,0x69 ,0x70 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x54 ,0x68 ,0x65 ,0x20 ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x73 ,0x6B ,0x69 ,0x6E ,0x20 ,0x66 ,0x6F ,0x72 ,0x20 ,0x74 ,0x68 ,0x65 ,0x20 ,0x4E ,0x69 ,0x76 ,0x6F ,0x20 ,0x53 ,0x6C ,0x69 ,0x64 ,0x65 ,0x72 ,0x2E ,0x0D ,0x0A ,0x56 ,0x65 ,0x72 ,0x73 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x31 ,0x2E ,0x33 ,0x0D ,0x0A ,0x41 ,0x75 ,0x74 ,0x68 ,0x6F ,0x72 ,0x3A ,0x20 ,0x47 ,0x69 ,0x6C ,0x62 ,0x65 ,0x72 ,0x74 ,0x20 ,0x50 ,0x65 ,0x6C ,0x6C ,0x65 ,0x67 ,0x72 ,0x6F ,0x6D ,0x0D ,0x0A ,0x41 ,0x75 ,0x74 ,0x68 ,0x6F ,0x72 ,0x20 ,0x55 ,0x52 ,0x49 ,0x3A ,0x20 ,0x68 ,0x74 ,0x74 ,0x70 ,0x3A ,0x2F ,0x2F ,0x64 ,0x65 ,0x76 ,0x37 ,0x73 ,0x74 ,0x75 ,0x64 ,0x69 ,0x6F ,0x73 ,0x2E ,0x63 ,0x6F ,0x6D ,0x0D ,0x0A ,0x53 ,0x75 ,0x70 ,0x70 ,0x6F ,0x72 ,0x74 ,0x73 ,0x20 ,0x54 ,0x68 ,0x75 ,0x6D ,0x62 ,0x73 ,0x3A ,0x20 ,0x74 ,0x72 ,0x75 ,0x65 ,0x0D ,0x0A ,0x2A ,0x2F ,0x0D ,0x0A ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x53 ,0x6C ,0x69 ,0x64 ,0x65 ,0x72 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x70 ,0x6F ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x72 ,0x65 ,0x6C ,0x61 ,0x74 ,0x69 ,0x76 ,0x65 ,0x3B ,0x0D ,0x0A ,0x09 ,0x2F ,0x2A ,0x20 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x23 ,0x66 ,0x66 ,0x66 ,0x20 ,0x75 ,0x72 ,0x6C ,0x28 ,0x6C ,0x6F ,0x61 ,0x64 ,0x69 ,0x6E ,0x67 ,0x2E ,0x67 ,0x69 ,0x66 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x20 ,0x35 ,0x30 ,0x25 ,0x20 ,0x35 ,0x30 ,0x25 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x23 ,0x66 ,0x66 ,0x66 ,0x20 ,0x75 ,0x72 ,0x6C ,0x28 ,0x2F ,0x4E ,0x69 ,0x76 ,0x6F ,0x5F ,0x6C ,0x6F ,0x61 ,0x64 ,0x69 ,0x6E ,0x67 ,0x5F ,0x67 ,0x69 ,0x66 ,0x2F ,0x62 ,0x6C ,0x6F ,0x62 ,0x70 ,0x61 ,0x67 ,0x65 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x20 ,0x35 ,0x30 ,0x25 ,0x20 ,0x35 ,0x30 ,0x25 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x6D ,0x61 ,0x72 ,0x67 ,0x69 ,0x6E ,0x2D ,0x62 ,0x6F ,0x74 ,0x74 ,0x6F ,0x6D ,0x3A ,0x31 ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x2F ,0x2A ,0x20 ,0x2D ,0x77 ,0x65 ,0x62 ,0x6B ,0x69 ,0x74 ,0x2D ,0x62 ,0x6F ,0x78 ,0x2D ,0x73 ,0x68 ,0x61 ,0x64 ,0x6F ,0x77 ,0x3A ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x31 ,0x70 ,0x78 ,0x20 ,0x35 ,0x70 ,0x78 ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x23 ,0x34 ,0x61 ,0x34 ,0x61 ,0x34 ,0x61 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x2F ,0x2A ,0x20 ,0x2D ,0x6D ,0x6F ,0x7A ,0x2D ,0x62 ,0x6F ,0x78 ,0x2D ,0x73 ,0x68 ,0x61 ,0x64 ,0x6F ,0x77 ,0x3A ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x31 ,0x70 ,0x78 ,0x20 ,0x35 ,0x70 ,0x78 ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x23 ,0x34 ,0x61 ,0x34 ,0x61 ,0x34 ,0x61 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x2F ,0x2A ,0x20 ,0x62 ,0x6F ,0x78 ,0x2D ,0x73 ,0x68 ,0x61 ,0x64 ,0x6F ,0x77 ,0x3A ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x31 ,0x70 ,0x78 ,0x20 ,0x35 ,0x70 ,0x78 ,0x20 ,0x30 ,0x70 ,0x78 ,0x20 ,0x23 ,0x34 ,0x61 ,0x34 ,0x61 ,0x34 ,0x61 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x53 ,0x6C ,0x69 ,0x64 ,0x65 ,0x72 ,0x20 ,0x69 ,0x6D ,0x67 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x70 ,0x6F ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x61 ,0x62 ,0x73 ,0x6F ,0x6C ,0x75 ,0x74 ,0x65 ,0x3B ,0x0D ,0x0A ,0x09 ,0x74 ,0x6F ,0x70 ,0x3A ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x6C ,0x65 ,0x66 ,0x74 ,0x3A ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x64 ,0x69 ,0x73 ,0x70 ,0x6C ,0x61 ,0x79 ,0x3A ,0x6E ,0x6F ,0x6E ,0x65 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x53 ,0x6C ,0x69 ,0x64 ,0x65 ,0x72 ,0x20 ,0x61 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x62 ,0x6F ,0x72 ,0x64 ,0x65 ,0x72 ,0x3A ,0x30 ,0x3B ,0x0D ,0x0A ,0x09 ,0x64 ,0x69 ,0x73 ,0x70 ,0x6C ,0x61 ,0x79 ,0x3A ,0x62 ,0x6C ,0x6F ,0x63 ,0x6B ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x74 ,0x65 ,0x78 ,0x74 ,0x2D ,0x61 ,0x6C ,0x69 ,0x67 ,0x6E ,0x3A ,0x20 ,0x63 ,0x65 ,0x6E ,0x74 ,0x65 ,0x72 ,0x3B ,0x0D ,0x0A ,0x09 ,0x70 ,0x61 ,0x64 ,0x64 ,0x69 ,0x6E ,0x67 ,0x3A ,0x20 ,0x32 ,0x30 ,0x70 ,0x78 ,0x20 ,0x30 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x20 ,0x61 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x64 ,0x69 ,0x73 ,0x70 ,0x6C ,0x61 ,0x79 ,0x3A ,0x69 ,0x6E ,0x6C ,0x69 ,0x6E ,0x65 ,0x2D ,0x62 ,0x6C ,0x6F ,0x63 ,0x6B ,0x3B ,0x0D ,0x0A ,0x09 ,0x77 ,0x69 ,0x64 ,0x74 ,0x68 ,0x3A ,0x32 ,0x32 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x68 ,0x65 ,0x69 ,0x67 ,0x68 ,0x74 ,0x3A ,0x32 ,0x32 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x2F ,0x2A ,0x20 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x75 ,0x72 ,0x6C ,0x28 ,0x62 ,0x75 ,0x6C ,0x6C ,0x65 ,0x74 ,0x73 ,0x2E ,0x70 ,0x6E ,0x67 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x75 ,0x72 ,0x6C ,0x28 ,0x2F ,0x4E ,0x69 ,0x76 ,0x6F ,0x5F ,0x62 ,0x75 ,0x6C ,0x6C ,0x65 ,0x74 ,0x73 ,0x5F ,0x70 ,0x6E ,0x67 ,0x2F ,0x62 ,0x6C ,0x6F ,0x62 ,0x70 ,0x61 ,0x67 ,0x65 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x3B ,0x0D ,0x0A ,0x09 ,0x74 ,0x65 ,0x78 ,0x74 ,0x2D ,0x69 ,0x6E ,0x64 ,0x65 ,0x6E ,0x74 ,0x3A ,0x2D ,0x39 ,0x39 ,0x39 ,0x39 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x62 ,0x6F ,0x72 ,0x64 ,0x65 ,0x72 ,0x3A ,0x30 ,0x3B ,0x0D ,0x0A ,0x09 ,0x6D ,0x61 ,0x72 ,0x67 ,0x69 ,0x6E ,0x3A ,0x20 ,0x30 ,0x20 ,0x32 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x20 ,0x61 ,0x2E ,0x61 ,0x63 ,0x74 ,0x69 ,0x76 ,0x65 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x2D ,0x70 ,0x6F ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x30 ,0x20 ,0x2D ,0x32 ,0x32 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x64 ,0x69 ,0x72 ,0x65 ,0x63 ,0x74 ,0x69 ,0x6F ,0x6E ,0x4E ,0x61 ,0x76 ,0x20 ,0x61 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x64 ,0x69 ,0x73 ,0x70 ,0x6C ,0x61 ,0x79 ,0x3A ,0x62 ,0x6C ,0x6F ,0x63 ,0x6B ,0x3B ,0x0D ,0x0A ,0x09 ,0x77 ,0x69 ,0x64 ,0x74 ,0x68 ,0x3A ,0x33 ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x68 ,0x65 ,0x69 ,0x67 ,0x68 ,0x74 ,0x3A ,0x33 ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x2F ,0x2A ,0x20 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x75 ,0x72 ,0x6C ,0x28 ,0x61 ,0x72 ,0x72 ,0x6F ,0x77 ,0x73 ,0x2E ,0x70 ,0x6E ,0x67 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x3B ,0x20 ,0x2A ,0x2F ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x75 ,0x72 ,0x6C ,0x28 ,0x2F ,0x4E ,0x69 ,0x76 ,0x6F ,0x5F ,0x61 ,0x72 ,0x72 ,0x6F ,0x77 ,0x73 ,0x5F ,0x70 ,0x6E ,0x67 ,0x2F ,0x62 ,0x6C ,0x6F ,0x62 ,0x70 ,0x61 ,0x67 ,0x65 ,0x29 ,0x20 ,0x6E ,0x6F ,0x2D ,0x72 ,0x65 ,0x70 ,0x65 ,0x61 ,0x74 ,0x3B ,0x0D ,0x0A ,0x09 ,0x74 ,0x65 ,0x78 ,0x74 ,0x2D ,0x69 ,0x6E ,0x64 ,0x65 ,0x6E ,0x74 ,0x3A ,0x2D ,0x39 ,0x39 ,0x39 ,0x39 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x62 ,0x6F ,0x72 ,0x64 ,0x65 ,0x72 ,0x3A ,0x30 ,0x3B ,0x0D ,0x0A ,0x09 ,0x6F ,0x70 ,0x61 ,0x63 ,0x69 ,0x74 ,0x79 ,0x3A ,0x20 ,0x30 ,0x3B ,0x0D ,0x0A ,0x09 ,0x2D ,0x77 ,0x65 ,0x62 ,0x6B ,0x69 ,0x74 ,0x2D ,0x74 ,0x72 ,0x61 ,0x6E ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x61 ,0x6C ,0x6C ,0x20 ,0x32 ,0x30 ,0x30 ,0x6D ,0x73 ,0x20 ,0x65 ,0x61 ,0x73 ,0x65 ,0x2D ,0x69 ,0x6E ,0x2D ,0x6F ,0x75 ,0x74 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x2D ,0x6D ,0x6F ,0x7A ,0x2D ,0x74 ,0x72 ,0x61 ,0x6E ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x61 ,0x6C ,0x6C ,0x20 ,0x32 ,0x30 ,0x30 ,0x6D ,0x73 ,0x20 ,0x65 ,0x61 ,0x73 ,0x65 ,0x2D ,0x69 ,0x6E ,0x2D ,0x6F ,0x75 ,0x74 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x2D ,0x6F ,0x2D ,0x74 ,0x72 ,0x61 ,0x6E ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x61 ,0x6C ,0x6C ,0x20 ,0x32 ,0x30 ,0x30 ,0x6D ,0x73 ,0x20 ,0x65 ,0x61 ,0x73 ,0x65 ,0x2D ,0x69 ,0x6E ,0x2D ,0x6F ,0x75 ,0x74 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x74 ,0x72 ,0x61 ,0x6E ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x20 ,0x61 ,0x6C ,0x6C ,0x20 ,0x32 ,0x30 ,0x30 ,0x6D ,0x73 ,0x20 ,0x65 ,0x61 ,0x73 ,0x65 ,0x2D ,0x69 ,0x6E ,0x2D ,0x6F ,0x75 ,0x74 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x3A ,0x68 ,0x6F ,0x76 ,0x65 ,0x72 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x64 ,0x69 ,0x72 ,0x65 ,0x63 ,0x74 ,0x69 ,0x6F ,0x6E ,0x4E ,0x61 ,0x76 ,0x20 ,0x61 ,0x20 ,0x7B ,0x20 ,0x6F ,0x70 ,0x61 ,0x63 ,0x69 ,0x74 ,0x79 ,0x3A ,0x20 ,0x31 ,0x3B ,0x20 ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x61 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x6E ,0x65 ,0x78 ,0x74 ,0x4E ,0x61 ,0x76 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x2D ,0x70 ,0x6F ,0x73 ,0x69 ,0x74 ,0x69 ,0x6F ,0x6E ,0x3A ,0x2D ,0x33 ,0x30 ,0x70 ,0x78 ,0x20 ,0x30 ,0x3B ,0x0D ,0x0A ,0x09 ,0x72 ,0x69 ,0x67 ,0x68 ,0x74 ,0x3A ,0x31 ,0x35 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x61 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x70 ,0x72 ,0x65 ,0x76 ,0x4E ,0x61 ,0x76 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x6C ,0x65 ,0x66 ,0x74 ,0x3A ,0x31 ,0x35 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x61 ,0x70 ,0x74 ,0x69 ,0x6F ,0x6E ,0x20 ,0x7B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x66 ,0x6F ,0x6E ,0x74 ,0x2D ,0x66 ,0x61 ,0x6D ,0x69 ,0x6C ,0x79 ,0x3A ,0x20 ,0x48 ,0x65 ,0x6C ,0x76 ,0x65 ,0x74 ,0x69 ,0x63 ,0x61 ,0x2C ,0x20 ,0x41 ,0x72 ,0x69 ,0x61 ,0x6C ,0x2C ,0x20 ,0x73 ,0x61 ,0x6E ,0x73 ,0x2D ,0x73 ,0x65 ,0x72 ,0x69 ,0x66 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x61 ,0x70 ,0x74 ,0x69 ,0x6F ,0x6E ,0x20 ,0x61 ,0x20 ,0x7B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x63 ,0x6F ,0x6C ,0x6F ,0x72 ,0x3A ,0x23 ,0x66 ,0x66 ,0x66 ,0x3B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x62 ,0x6F ,0x72 ,0x64 ,0x65 ,0x72 ,0x2D ,0x62 ,0x6F ,0x74 ,0x74 ,0x6F ,0x6D ,0x3A ,0x31 ,0x70 ,0x78 ,0x20 ,0x64 ,0x6F ,0x74 ,0x74 ,0x65 ,0x64 ,0x20 ,0x23 ,0x66 ,0x66 ,0x66 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x61 ,0x70 ,0x74 ,0x69 ,0x6F ,0x6E ,0x20 ,0x61 ,0x3A ,0x68 ,0x6F ,0x76 ,0x65 ,0x72 ,0x20 ,0x7B ,0x0D ,0x0A ,0x20 ,0x20 ,0x20 ,0x20 ,0x63 ,0x6F ,0x6C ,0x6F ,0x72 ,0x3A ,0x23 ,0x66 ,0x66 ,0x66 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x74 ,0x68 ,0x75 ,0x6D ,0x62 ,0x73 ,0x2D ,0x65 ,0x6E ,0x61 ,0x62 ,0x6C ,0x65 ,0x64 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x77 ,0x69 ,0x64 ,0x74 ,0x68 ,0x3A ,0x20 ,0x31 ,0x30 ,0x30 ,0x25 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x74 ,0x68 ,0x75 ,0x6D ,0x62 ,0x73 ,0x2D ,0x65 ,0x6E ,0x61 ,0x62 ,0x6C ,0x65 ,0x64 ,0x20 ,0x61 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x77 ,0x69 ,0x64 ,0x74 ,0x68 ,0x3A ,0x20 ,0x61 ,0x75 ,0x74 ,0x6F ,0x3B ,0x0D ,0x0A ,0x09 ,0x68 ,0x65 ,0x69 ,0x67 ,0x68 ,0x74 ,0x3A ,0x20 ,0x61 ,0x75 ,0x74 ,0x6F ,0x3B ,0x0D ,0x0A ,0x09 ,0x62 ,0x61 ,0x63 ,0x6B ,0x67 ,0x72 ,0x6F ,0x75 ,0x6E ,0x64 ,0x3A ,0x20 ,0x6E ,0x6F ,0x6E ,0x65 ,0x3B ,0x0D ,0x0A ,0x09 ,0x6D ,0x61 ,0x72 ,0x67 ,0x69 ,0x6E ,0x2D ,0x62 ,0x6F ,0x74 ,0x74 ,0x6F ,0x6D ,0x3A ,0x20 ,0x35 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,0x2E ,0x74 ,0x68 ,0x65 ,0x6D ,0x65 ,0x2D ,0x64 ,0x65 ,0x66 ,0x61 ,0x75 ,0x6C ,0x74 ,0x20 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x63 ,0x6F ,0x6E ,0x74 ,0x72 ,0x6F ,0x6C ,0x4E ,0x61 ,0x76 ,0x2E ,0x6E ,0x69 ,0x76 ,0x6F ,0x2D ,0x74 ,0x68 ,0x75 ,0x6D ,0x62 ,0x73 ,0x2D ,0x65 ,0x6E ,0x61 ,0x62 ,0x6C ,0x65 ,0x64 ,0x20 ,0x69 ,0x6D ,0x67 ,0x20 ,0x7B ,0x0D ,0x0A ,0x09 ,0x64 ,0x69 ,0x73 ,0x70 ,0x6C ,0x61 ,0x79 ,0x3A ,0x20 ,0x62 ,0x6C ,0x6F ,0x63 ,0x6B ,0x3B ,0x0D ,0x0A ,0x09 ,0x77 ,0x69 ,0x64 ,0x74 ,0x68 ,0x3A ,0x20 ,0x31 ,0x32 ,0x30 ,0x70 ,0x78 ,0x3B ,0x0D ,0x0A ,0x09 ,0x68 ,0x65 ,0x69 ,0x67 ,0x68 ,0x74 ,0x3A ,0x20 ,0x61 ,0x75 ,0x74 ,0x6F ,0x3B ,0x0D ,0x0A ,0x7D ,0x0D ,0x0A ,};

