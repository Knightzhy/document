将proto生成.h .cpp
load("@rules_proto//proto:defs.bzl", "proto_library")

将.h .cpp编译成lib
load("@rules_cc//cc:defs.bzl", "cc_proto_library")

load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@rules_cc//cc:defs.bzl", "cc_library")


bazel常用用法
http://www.manongjc.com/detail/16-zdogodapesvzyoq.html