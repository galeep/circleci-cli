#!/usr/bin/env bats

load suite

@test "projects should succeed predictably" {
  run build/bin/circleci projects --filter='.[] | .username + "/" + .reponame'
  [ ${status} -eq 0 ]
  [ "${#lines[@]}" -gt 1 ]
}
