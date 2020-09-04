"""
@generated
cargo-raze crate build file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

package(default_visibility = [
    # Public for visibility by "@raze__crate__version//" targets.
    #
    # Prefer access through "//third_party/cargo", which limits external
    # visibility to explicit Cargo.toml dependencies.
    "//visibility:public",
])

licenses([
    "notice",  # MIT from expression "MIT OR Apache-2.0"
])

load(
    "@io_bazel_rules_rust//rust:rust.bzl",
    "rust_binary",
    "rust_library",
    "rust_test",
)

# Unsupported target "chrono" with type "bench" omitted

rust_library(
    name = "chrono",
    srcs = glob(["**/*.rs"]),
    crate_features = [
        "clock",
        "default",
        "std",
        "time",
    ],
    crate_root = "src/lib.rs",
    crate_type = "lib",
    edition = "2015",
    rustc_flags = [
        "--cap-lints=allow",
    ],
    tags = ["cargo-raze"],
    version = "0.4.15",
    deps = [
        "//third_party/cargo/vendor/num-integer-0.1.43:num_integer",
        "//third_party/cargo/vendor/num-traits-0.2.12:num_traits",
        "//third_party/cargo/vendor/time-0.1.44:time",
    ],
)

# Unsupported target "serde" with type "bench" omitted
# Unsupported target "wasm" with type "test" omitted
