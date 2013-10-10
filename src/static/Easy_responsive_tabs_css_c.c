// Thanks, http://stupefydeveloper.blogspot.ru/2008/08/cc-embed-binary-data-into-elf.html
#include <urweb.h>
#include <stdio.h>
extern int _binary___Easy_responsive_tabs_css_c_blob_size;
extern int _binary___Easy_responsive_tabs_css_c_blob_start;
uw_Basis_blob uw_Easy_responsive_tabs_css_c_binary (uw_context ctx, uw_unit unit)
{
  uw_Basis_blob blob;
  blob.data = (char*)&_binary___Easy_responsive_tabs_css_c_blob_start;
  blob.size = (size_t)&_binary___Easy_responsive_tabs_css_c_blob_size;
  return blob;
}

uw_Basis_string uw_Easy_responsive_tabs_css_c_text (uw_context ctx, uw_unit unit) {
  char* data = (char*)&_binary___Easy_responsive_tabs_css_c_blob_start;
  size_t size = (size_t)&_binary___Easy_responsive_tabs_css_c_blob_size;
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
