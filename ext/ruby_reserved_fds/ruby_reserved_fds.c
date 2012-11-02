#include "ruby.h"

static VALUE mRubyReservedFDs;

static VALUE ruby_reserved_fds_reserved_fd(VALUE self, VALUE fd)
{
    if(rb_reserved_fd_p(FIX2INT(fd)))
        return Qtrue;
    else
        return Qfalse;
}

void Init_ruby_reserved_fds() {
    mRubyReservedFDs = rb_define_module("RubyReservedFDs");
    rb_define_module_function(mRubyReservedFDs, "reserved_fd?", ruby_reserved_fds_reserved_fd, 1);
}
