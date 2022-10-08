# Cueniform: Experiment #1: Makefile

This is an experiment intended to find out how far we can go with a simple/dumb Makefile as our Terraform pre-processor.

## Use

Do whatever you need to make the Makefile's targets available inside a Terraform-related project. This could mean:

- Copy the Makefile to the top-level directory of the project, or wherever the TF CLI will be invoked
- Incorporate the Makefile's targets into your project's existing Makefile
- Clone and then include the Makefile via Make's include syntax

Then, after modifying .tf.cue files, invoke `make tfjson`.

FIXME: *loads* more detail needed!

## Testing

Run `tests/all-tests.sh`. Requires `make` and [the `testscript` CLI](https://pkg.go.dev/github.com/rogpeppe/go-internal/cmd/testscript) to be installed.
