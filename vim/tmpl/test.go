package main_test

import (
	"testing"

	"github.com/avakarev/go-util/testutil"
)

func even(n int) (bool, error) {
	return n%2 == 0, nil
}

func TestEvent(t *testing.T) {
	cases := []struct {
		given int
		want  bool
	}{
		{given: 0, want: true},
		{given: 1, want: false},
		{given: 5, want: false},
		{given: 42, want: true},
	}
	for i := range cases {
		got, err := even(cases[i].given)
		testutil.MustNoErr(err, t)
		testutil.Diff(cases[i].want, got, t)
	}
}
