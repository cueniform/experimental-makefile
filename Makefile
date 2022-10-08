.DEFAULT: tfjson

MAKEFLAGS += --warn-undefined-variables \
	     --no-builtin-rules \
	     --no-builtin-variables \
	     --no-print-directory \
	     --jobs=1

FIND_FILES  = find . \
		-not \( -path ./.git -prune \)

TF_CUE  = $(shell $(FIND_FILES) -name '*.tf.cue')
TF_JSON = $(patsubst %.tf.cue, %.tf.json, $(TF_CUE))

.PHONY: tfjson
tfjson: $(TF_JSON)

%.tf.json: %.tf.cue
	@cue export $< --force --out json --outfile $@
	# $< > $@

.PHONY: clean
clean:
	rm -f $(TF_JSON)
