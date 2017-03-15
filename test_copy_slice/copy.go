package test_copy_slice

func CopyByAppend(a []int) []int {
	b := append([]int(nil), a...)
	return b
}

func CopyByCopy(a []int) []int {
	b := make([]int, len(a))
	copy(b, a)
	return b
}

func CopyByLoopAppend(a []int) []int {
	b := []int(nil)
	for i := 0; i < len(a); i++ {
		b = append(b, a[i])
	}
	return b
}
