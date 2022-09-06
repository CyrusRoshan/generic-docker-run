# generic-docker-run
Lets you run docker run commands the way you'd expect

## Usage

Inside your github action file:

```yaml
test:
  name: Run Tests
  runs-on: ubuntu-latest
  steps:
    # For example, to run your pubsub image used in tests
    - uses: cyrusroshan/generic-docker-run@main
      with:
        command: "docker run -d --rm -p 8080:8085 --name pubsub-test --init gcr.io/google.com/cloudsdktool/cloud-sdk:emulators gcloud beta emulators pubsub start --host-port=0.0.0.0:8085"

    # To checkout your repo
    - uses: actions/checkout@v2

    - name: Install
      run: yarn

    # The tests that depend on a pubsub server
    - name: Tests
      run: yarn
```