package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_rust//rust:rust.bzl", "rust_library")

rust_library(
    name = "librubyfmt",
    srcs = glob(["src/**/*.rs"]),
    crate_type = "staticlib",
    data = [
        "rubyfmt_lib.rb",
    ] + glob([
        "ruby_checkout/ruby-2.6.6/ext/ripper/lib/**/*.rb",
    ]),
    edition = "2018",
    proc_macro_deps = [
        "//experimental/third_party/cargo/ripper_deserialize:ripper_deserialize",
    ],
    deps = [
        "//third_party/cargo/vendor/backtrace-0.3.50:backtrace",
        "//third_party/cargo/vendor/bytecount-0.6.0:bytecount",
        "//third_party/cargo/vendor/jemallocator-0.3.2:jemallocator",
        "//third_party/cargo/vendor/libc-0.2.76:libc",
        "//third_party/cargo/vendor/log-0.4.11:log",
        "//third_party/cargo/vendor/serde-1.0.113:serde",
        "//third_party/cargo/vendor/serde_json-1.0.57:serde_json",
        "//third_party/cargo/vendor/simplelog-0.8.0:simplelog",
    ],
)

cc_library(
    name = "rubyfmt_macro_wrappers",
    srcs = ["src/rubyfmt.c"],
    linkstatic = True,
    deps = ["@ruby_2_6//:headers"],
)
