package main_test

import (
	"testing"

	"github.com/avakarev/go-testutil"
)

func even(n int) (bool, error) {
	return n%2 == 0, nil
}

func TestOneIsNotEven(t *testing.T) {
	res, err := even(1)
	testutil.MustNoErr(err, t)
	testutil.Diff(false, res, t)
}

func TestFourtyTwoIsEven(t *testing.T) {
	res, err := even(42)
	testutil.MustNoErr(err, t)
	testutil.Diff(true, res, t)
}
