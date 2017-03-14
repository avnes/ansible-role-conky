import pytest
import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    '.molecule/ansible_inventory').get_hosts('all')


def test_conky_file(File):
    f = File('/home/ansible-test-user/.conkyrc')

    assert f.exists
    assert f.user == 'ansible-test-user'
    assert f.group == 'ansible-test-user'
    assert f.mode == 0o644


@pytest.mark.parametrize("name", [
    ("conky"),
    ("curl"),
    ("gzip"),
    ("tar"),
    ("sudo"),
])
def test_packages(Package, TestinfraBackend, name):
    Command = TestinfraBackend.get_module("Command")
    if Command.exists("pacman"):
        print 'ArchLinux platform is currently not supported for " \
            + "Package testing in testinfra'
    else:
        assert Package(name).is_installed
