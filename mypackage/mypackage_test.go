package mypackage

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func Test_TestSomething(t *testing.T) {
	val := someFunc()

	assert.Equal(t, val, 1)
}
