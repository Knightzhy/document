cc_library(
    name = "libco",
    srcs = glob(["*.cpp"]),
    hdrs = glob(["*.h"]),
    visibility = ["//visibility:public"],
)

cc_library(
    name = "libco_static",
    srcs = ["lib/libcolib.a"],
    hdrs = glob(["*.h"]),
    visibility = ["//visibility:public"],
)

cc_import(
    name = "libco_static_1",
    hdrs = glob(["*.h"]),
    static_library = "lib/libcolib.a",
    visibility = ["//visibility:public"],
)

cc_library(
    name = "libco_so",
    srcs = ["solib/libcolib.so"],
    hdrs = glob(["*.h"]),
    visibility = ["//visibility:public"],
)

cc_import(
    name = "libco_so_1",
    hdrs = glob(["*.h"]),
    shared_library = "solib/libcolib.so",
    visibility = ["//visibility:public"],
)