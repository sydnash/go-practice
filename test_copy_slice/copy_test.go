package test_copy_slice

import "testing"
import "strings"

var a = make([]int, 1000000)

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
	t.Log("aldskjfad")
	CopyByAppend(a)
}

var t0 string = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
var t1 string = t0[0 : len(t0)/2]
var t2 string = t0[len(t0)/2:]

func BenchmarkStringEqual(b *testing.B) {
	for i := 0; i < b.N; i++ {
		///_ = t3 == t4
	}
}
func BenchmarkStringComp(b *testing.B) {
	for i := 0; i < b.N; i++ {
		_ = strings.Compare(t1, t2)
	}
}
