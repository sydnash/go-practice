package test_copy_slice

import "testing"

var a = make([]int, 100000)

func BenchmarkCopyByAppend(b *testing.B) {
	for i := 1; i < b.N; i++ {
		CopyByAppend(a)
	}
}

func BenchmarkCopyByCopy(b *testing.B) {
	for i := 1; i < b.N; i++ {
		CopyByCopy(a)
	}
}
func BenchmarkCopyByLoopAppend(b *testing.B) {
	for i := 1; i < b.N; i++ {
		CopyByLoopAppend(a)
	}
}

func TestCopyByAppend(t *testing.T) {
	CopyByAppend(a)
}
