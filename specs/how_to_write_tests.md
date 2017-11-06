## Unit Testing

We use [pytest](https://docs.pytest.org/en/latest/) to write and run our unit testing

### Creating Unit Tests

- It's our convention to put the unit tests file under the same path of the code to be tested and with the same file name with `test` prefix. for example to test [SSHClientFactor](https://github.com/Jumpscale/core9/blob/9.3.0/JumpScale9/clients/ssh/SSHClientFactory.py) reference check [test_SSHClientFactory](https://github.com/Jumpscale/core9/blob/9.3.0/JumpScale9/clients/ssh/test_SSHClientFactory.py)

- Our testing puprose is to check if the code is functional and to detect bugs. Therefore, we use monkey patching at minimal level since most of our code interact directly with the filesystem.

- It's recommended to add a marker decorator to every test in order to add the ability to run only the concerned tests not the whole test suite.
For reference, check [test_SSHClientFactory](https://github.com/Jumpscale/core9/blob/9.3.0/JumpScale9/clients/ssh/test_SSHClientFactory.py#L51)


### Running the Unit Testing

- To run the whole test suite you can run `pylint` at the directory root, it'll run by default every file that starts with `test_*`
- To run a separate module test suite, you can run `pytest -m {module_test_suite}` for example `pytest -m ssh_factory` to [test_SSHClientFactory](https://github.com/Jumpscale/core9/blob/9.3.0/JumpScale9/clients/ssh/test_SSHClientFactory.py)
