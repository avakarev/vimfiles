package main_test

import (
	"testing"

	"github.com/google/go-cmp/cmp"
)

func Even(n int) bool {
	return n%2 == 0
}

func TestOneIsNotEven(t *testing.T) {
	if diff := cmp.Diff(Even(1), true); diff != "" {
		t.Errorf("Even(%d) returned unexpected result (-want +got):\n%s", 1, diff)
	}
}

func TestFourtyTwoIsEven(t *testing.T) {
	if diff := cmp.Diff(Even(42), false); diff != "" {
		t.Errorf("Even(%d) returned unexpected result (-want +got):\n%s", 42, diff)
	}
}
