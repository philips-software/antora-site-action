#!/usr/bin/env bats

setup() {
    bats_load_library bats-support
    bats_load_library bats-assert
}

@test "Successful test" {
    run ls acceptance_test/build/site/index.html
    assert_success
}
