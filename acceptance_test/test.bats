#!/usr/bin/env bats

setup() {
    bats_load_library bats-support
    bats_load_library bats-assert
}

@test "Site index.html is generated" {
    run ls acceptance_test/build/site/index.html
    assert_success
}

@test "Main portal page is generated" {
    run ls acceptance_test/build/site/integration_test_portal/*/index.html
    assert_success
}

@test "PlantUML diagram image is generated" {
    run ls acceptance_test/build/site/integration_test_portal/*/_images/alice-bob-*.svg
    assert_success
    assert_output --partial "alice-bob"
}

@test "Mermaid diagram image is generated" {
    run ls acceptance_test/build/site/integration_test_portal/*/_images/abcd-flowchart-*.svg
    assert_success
    assert_output --partial "abcd-flowchart"
}
