# Programmatically define third-party dependencies so that external clients can load them
def cldb_workspace(workspace_name):
    if len(workspace_name) > 0 and not workspace_name.startswith("@"):
        workspace_name = "@" + workspace_name

    # boost
    native.new_http_archive(
        name = "boost_archive",
        url = "http://pilotfiber.dl.sourceforge.net/project/boost/boost/1.63.0/boost_1_63_0.tar.gz",
        sha256 = "fe34a4e119798e10b8cc9e565b3b0284e9fd3977ec8a1b19586ad1dec397088b",
        strip_prefix = "boost_1_63_0",
        build_file = workspace_name + "//third_party:boost.BUILD",
    )
    native.bind(
        name = "boost",
        actual = "@boost_archive//:boost",
    )
    native.bind(
        name = "boost_context",
        actual = "@boost_archive//:context",
    )
    native.bind(
        name = "boost_filesystem",
        actual = "@boost_archive//:filesystem",
    )
    native.bind(
        name = "boost_iostreams",
        actual = "@boost_archive//:iostreams",
    )
    native.bind(
        name = "boost_program_options",
        actual = "@boost_archive//:program_options",
    )
    native.bind(
        name = "boost_regex",
        actual = "@boost_archive//:regex",
    )
    native.bind(
        name = "boost_system",
        actual = "@boost_archive//:system",
    )

    # curl
    native.new_http_archive(
        name = "curl_archive",
        url = "https://github.com/curl/curl/archive/curl-7_53_1.tar.gz",
        strip_prefix = "curl-curl-7_53_1",
        sha256 = "61806366d3e91c5671607560da3fc31f3f57ba021ecfd190f199048db2fdd5f6",
        build_file = workspace_name + "//third_party:curl.BUILD",
    )
    native.bind(
        name = "curl",
        actual = "@curl_archive//:curl",
    )
    native.bind(
        name = "curl_config",
        actual = workspace_name + "//third_party/curl:config"
    )

    # double-conversion
    native.new_http_archive(
        name = "double_conversion_archive",
        url = "https://github.com/google/double-conversion/archive/4abe326.tar.gz",
        strip_prefix = "double-conversion-4abe3267170fa52f39460460456990dbae803f4d",
        sha256 = "eade523d182260ba25fd5f314cee18297075e4aaf49b59ab80ad5998f371491e",
        build_file = workspace_name + "//third_party:double-conversion.BUILD",
    )
    native.bind(
        name = "double_conversion",
        actual = "@double_conversion_archive//:double-conversion",
    )

    # folly
    native.new_http_archive(
        name = "folly_archive",
        url = "https://github.com/facebook/folly/archive/v2017.09.11.00.tar.gz",
        strip_prefix = "folly-2017.09.11.00",
        sha256 = "926197dbf7930ccfe7ca3a515fc457ba812b99c8da6e486bd7c811d1fd5ff452",
        build_file = workspace_name + "//third_party:folly.BUILD",
    )
    native.bind(
        name = "folly",
        actual = "@folly_archive//:folly",
    )
    native.bind(
        name = "folly_config",
        actual = workspace_name + "//third_party/folly:config"
    )

    # gflags
    native.http_archive(
        name = "com_github_gflags_gflags",  # match the name defined in its WORKSPACE file
        url = "https://github.com/gflags/gflags/archive/60784b5.tar.gz",
        strip_prefix = "gflags-60784b53e364c2e2594916bc84af075c4f679fa8",
        sha256 = "0f696d48ce41775f9223627a77fd155c069a2ad24c208e2b2b3b3ab01c85a4a0",
    )
    native.bind(
        name = "gflags",
        actual = "@com_github_gflags_gflags//:gflags",
    )

    # glog
    native.new_http_archive(
        name = "glog_archive",
        url = "https://github.com/google/glog/archive/da816ea.tar.gz",
        strip_prefix = "glog-da816ea70645e463aa04f9564544939fa327d5a7",
        sha256 = "54fa0b1de92795c877d3fae363a1a014de5c16b7232a159186ee9a1894cd9733",
        build_file = workspace_name + "//third_party:glog.BUILD",
    )
    native.bind(
        name = "glog",
        actual = "@glog_archive//:glog",
    )
    native.bind(
        name = "glog_config",
        actual = workspace_name + "//third_party/glog:config"
    )

    # gtest
    native.new_http_archive(
        name = "gtest_archive",
        url = "https://github.com/google/googletest/archive/release-1.8.0.tar.gz",
        strip_prefix = "googletest-release-1.8.0",
        sha256 = "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8",
        build_file = workspace_name + "//third_party:gtest.BUILD",
    )
    native.bind(
        name = "gtest",
        actual = "@gtest_archive//:gtest",
    )
    native.bind(
        name = "gtest_main",
        actual = "@gtest_archive//:gtest_main",
    )
    native.bind(
        name = "gmock",
        actual = "@gtest_archive//:gmock",
    )
    native.bind(
        name = "gmock_main",
        actual = "@gtest_archive//:gmock_main",
    )

    # jemalloc
    native.new_http_archive(
        name = "jemalloc_archive",
        url = "https://github.com/jemalloc/jemalloc/archive/4.5.0.tar.gz",
        strip_prefix = "jemalloc-4.5.0",
        sha256 = "e885b65b95426945655ee91a30f563c9679770c92946bcdd0795f6b78c06c221",
        build_file = workspace_name + "//third_party:jemalloc.BUILD",
    )
    native.bind(
        name = "jemalloc",
        actual = "@jemalloc_archive//:jemalloc",
    )

    # libevent
    native.new_http_archive(
        name = "libevent_archive",
        url = "https://github.com/libevent/libevent/archive/release-2.0.22-stable.tar.gz",
        strip_prefix = "libevent-release-2.0.22-stable",
        sha256 = "ab89639b0819befb1d8b293d52047c6955f8d1c9150c2b22a0e6247930eb9128",
        build_file = workspace_name + "//third_party:libevent.BUILD",
    )
    native.bind(
        name = "libevent",
        actual = "@libevent_archive//:libevent",
    )
    native.bind(
        name = "libevent_config",
        actual = workspace_name + "//third_party/libevent:config"
    )

    # libunwind
    native.new_git_repository(
        name = "libunwind_git",
        remote = "git://git.sv.gnu.org/libunwind.git",
        tag = "v1.1", # Note: update the version in BUILD file
        build_file = workspace_name + "//third_party:libunwind.BUILD",
    )
    native.bind(
        name = "libunwind",
        actual = "@libunwind_git//:libunwind",
    )
    native.bind(
        name = "libunwind_config",
        actual = workspace_name + "//third_party/libunwind:config"
    )

    # murmurhash3
    native.new_http_archive(
        name = "murmurhash3_archive",
        url = "https://github.com/aappleby/smhasher/archive/61a0530.tar.gz",
        strip_prefix = "smhasher-61a0530f28277f2e850bfc39600ce61d02b518de",
        sha256 = "daa4bb23e24fe26a2f9d1bb0d241fff7eb963f7b7525fa20685e0dfb3b3ffa49",
        build_file = workspace_name + "//third_party:murmurhash3.BUILD",
    )
    native.bind(
        name = "murmurhash3",
        actual = "@murmurhash3_archive//:murmurhash3",
    )

    # prometheus
    native.new_git_repository(
        name = "prometheus_git",
        remote = "https://github.com/jupp0r/prometheus-cpp.git",
        commit = "8786dc357d2d1f4aaa4172144727ab086ed91eb7",
        build_file = workspace_name + "//third_party:prometheus.BUILD"
    )
    native.bind(
        name = "prometheus",
        actual = "@prometheus_git//:prometheus",
    )

    # prometheus client model
    native.new_git_repository(
        name = "prometheus_client_model_git",
        remote = "https://github.com/prometheus/client_model.git",
        commit = "6f3806018612930941127f2a7c6c453ba2c527d2",
        build_file = workspace_name + "//third_party:prometheus-client-model.BUILD"
    )
    native.bind(
        name = "prometheus_client_model",
        actual = "@prometheus_client_model_git//:client_model",
    )

    # protobuf
    native.git_repository(
        name = "protobuf_git",
        remote = "https://github.com/google/protobuf.git",
        tag = "v3.4.1",
    )
    native.bind(
        name = "protobuf_protoc",
        actual = "@protobuf_git//:protoc",
    )
    native.bind(
        name = "protobuf",
        actual = "@protobuf_git//:protobuf",
    )

    #re2
    native.git_repository(
        name = "com_googlesource_code_re2",  # match the name defined in its WORKSPACE file
        remote = "https://github.com/google/re2.git",
        tag = "2017-04-01",
    )
    native.bind(
        name = "re2",
        actual = "@com_googlesource_code_re2//:re2",
    )

    # rocksdb
    native.new_git_repository(
        name = "rocksdb_git",
        remote = "https://github.com/facebook/rocksdb.git",
        tag = "v5.7.3",
        build_file = workspace_name + "//third_party:rocksdb.BUILD",
    )
    native.bind(
        name = "rocksdb",
        actual = "@rocksdb_git//:rocksdb",
    )

    # snappy
    native.new_http_archive(
        name = "snappy_archive",
        url = "https://github.com/google/snappy/archive/ed3b7b2.tar.gz",
        strip_prefix = "snappy-ed3b7b242bd24de2ca6750c73f64bee5b7505944",
        sha256 = "88a644b224f54edcd57d01074c2d6fd6858888e915c21344b8622c133c35a337",
        build_file = workspace_name + "//third_party:snappy.BUILD",
    )
    native.bind(
        name = "snappy",
        actual = "@snappy_archive//:snappy",
    )
    native.bind(
        name = "snappy_config",
        actual = workspace_name + "//third_party/snappy:config"
    )

    # wangle
    native.new_http_archive(
        name = "wangle_archive",
        url = "https://github.com/facebook/wangle/archive/v2017.09.11.00.tar.gz",
        strip_prefix = "wangle-2017.09.11.00",
        sha256 = "698ee80c0c383207476afb53027894da2319c2c1976a1fcbebddbfbb7e1b20bd",
        build_file = workspace_name + "//third_party:wangle.BUILD",
    )
    native.bind(
        name = "wangle",
        actual = "@wangle_archive//:wangle",
    )

    # wtf
    native.new_http_archive(
        name = "wtf_archive",
        url = "https://github.com/google/tracing-framework/archive/f35328f.tar.gz",
        strip_prefix = "tracing-framework-f35328facf41b97cd33756f4a05b74533fe25440",
        sha256 = "0cf3525b800a5598c2fd4341049434241caffa92fb88da5fb2e97dff55836c2f",
        build_file = workspace_name + "//third_party:wtf.BUILD",
    )
    native.bind(
        name = "wtf",
        actual = "@wtf_archive//:wtf",
    )

    # zlib
    native.new_http_archive(
        name = "zlib_archive",
        url = "https://github.com/madler/zlib/archive/v1.2.11.tar.gz",
        strip_prefix = "zlib-1.2.11",
        sha256 = "629380c90a77b964d896ed37163f5c3a34f6e6d897311f1df2a7016355c45eff",
        build_file = workspace_name + "//third_party:zlib.BUILD",
    )
    native.bind(
        name = "zlib",
        actual = "@zlib_archive//:zlib",
    )
