package main

import (
	"testing"
)

func Even(n int) bool {
	return n%2 == 0
}

func TestOneIsNotEven(t *testing.T) {
	if Even(1) {
		t.Errorf("Even(%d) = %t; want %t", 1, true, false)
	}
}

func TestFourtyTwoIsEven(t *testing.T) {
	if !Even(42) {
		t.Errorf("Even(%d) = %t; want %t", 42, false, true)
	}
}
